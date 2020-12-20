---
title: API Reference
subtitle: >-
  Documentation for each available function
layout: page
---

<style>
.post-content li p {
  margin: 0;
}
.post-content > p {
  font-size: 85%;
}
</style>



##  cartoMesh2VTK

* in

* out
  * tr


 CARTOMESH2VTK Converts a Carto mesh file to VTK file  
  
 Usage:  
   tr = cartoMesh2VTK('openfile')  
 Where:  
   tr,  - a TriRep object  
  
 CARTOMESH2VTK Converts a Carto3 mesh to a VTK file and returns a TriRep  
 object  
  

**Author**  Steven Williams (2015)

##  cvHistogram

* in
  * userdata
  *  varargin 

* out
  * areas


 CVHISTOGRAM Draws a conduction velocity histogram  
  
 Usage:  
   cvHistogram( userdata )  
 Where:  
   userdata  - see importcarto_mem  
  
 CVHISTOGRAM accepts the following parameter-value pairs  
   'limits'    {[0 5]}|array in m/s  
   'binwidth'  {0.1}|double in m/s  
  
 CVHISTOGRAM displays a histogram of conduction velocities. Limits are set  
 to exclude non-physiological conduction velocities  
  

**Author**  Steven Williams (2020)

##  drawMap

* in
  * userdata
  *  varargin

* out
  * hSurf


 DRAWMAP plots a Carto LAT map  
 Usage:  
   hSurf = drawMap(userdata)  
   hSurf = drawMap(userdata, varargin);  
  
 Where:  
   hSurf - is a handle to the surface  
   userdata - is a Carto data structure  
  
 DRAWMAP is essentially a wrapper function for colorShell.m. DRAWMAP  
 accepts the following parameter-value pairs:  
   'data' [d]  
       - Where d is a vector of data values and size(d) equals numel(userdata.surface.triRep.X)  
   'type'  ('act')|'bip'|'force'|'uni'|'none'|'cv'  
       - Specifies type of map - activation, bipolar or unipolar voltage  
   'coloraxis' [a b]  
       - Where a and b are real numbers. See help colorShell  
   'noLight' (false)|true  
       - If set to true no additional light will be drawn. Useful if  
       overlaying maps.  
   'usrColorMap' ([])|cMap  
       - If set, this colormap will be used instead of the defaults  
   colorbarlocation    'north' | 'south' | 'east' | 'west' | 'northoutside' |  
                       'southoutside' | 'eastoutside' | {'westoutside'}  
   'orientation' ('AP')|'PA'  
       - Specifies the view as AP or PA. LAO, RAO, LL, RL yet to be  
       defined  
   'colorfillthreshold'    [c]  
       - Where c is a scalar value; defaulting to 10mm  
  

**Author**  Steven Williams (2016)

##  editUserdata

* in
  * userdata

* out
  * userdata2


 EDITUSERDATA Graphically remove regions from a Carto dataset  
  
 Usage:  
   userdata2 = editUserdata(userdata)  
 Where:  
   userdata  - is the original Carto dataset  
   userdata2 - is the new Carto dataset with elements removed  
  
 EDITUSERDATA uses EDITTRIANGULATION to remove triangles from a TriRep  
 object. Controls:  
   Left click          - select triangles to remove  
   Shift-Left click    - select triangles to keep  
   Ctrl-Left click     - select area up to the boundary  
   d                   - done  
  

**Author**  Steven Williams (2016)

##  fixVoltageAnnotations

* in
  * userdata

* out
  * data


 FIXVOLTAGEANNOTATIONS Fixes the uni/bip reversal identified in  
 userdata.electric.voltages in August 2014. This function is not required  
 for any userdata .mat files created after 27th August 2014.  
  
 Usage:  
   userdata = fixVoltageAnnotations(userdata)  
 Where:  
   userdata - is the output  
   userdata - is the input, or 'openfile'  
  
 FIXVOLTAGEANNOTATIONS detailed description goes here.  
  

**Author**  Steven Williams (2014)

##  generateInterpData

* in
  * userdata
  *  datatype
  *  varargin

* out
  * interpData


 GENERATEINTERPDATA Creates a matrix of interpolated data  
  
 Usage:  
   interpData = generateInterpData(userdata, datatype)  
 Where:  
   userdata - see, importcarto_mem  
   datatype - the desired data type to return  
         'bip-map' - bipolar voltage; from the exported voltage values  
         'uni-map' - unipolar voltage; from the exported voltage values  
         'lat-map' - local activation time; from the annotated electrograms  
         'bip-egm' - bipolar voltage; measured by OpenEP on the egms (NOT IMPLEMENTED)  
         'uni-egm' - unipolar voltage; measured by OpenEP on the egms (NOT IMPLEMENTED)  
         'lat-egm' - local activation time; measured by OpenEP on the egms (NOT IMPLEMENTED)  
         'cv' - conduction velocity (NOT IMPLEMENTED)  
   interpData - is the interpolated data  
  
 GENERATEINTERPDATA accepts the following parameter-value pairs  
   'interMethod'    nearest|linear|{natural}  
       - The interpolation method, default to natural  
   'exterMethod'    {nearest}|linear|none  
       - The extrapolation method, defaults to linear  
   'distanceThresh' d  
       - The distance threshold, d, default 10mm  
  
 GENERATEINTERPOLATEDDATA removes any NaN values in data (and their  
 corresponding location(s) in coords) before calling scatteredInterpolant  
 with inter/exterMethod interpolation/extrapolation. Any values greater  
 than distancethresh are removed.  
  
 TODO: Separate the interpolation function into a subroutine to permit extensibility  
  

**Author**  Steven Williams (2018)

##  getAblationArea

* in
  * userdata
  *  visitag
  *  varargin

* out
  * ablArea, isAblated, trAbl


 GETABLATIONAREA Calculates the area of a chamber which has been ablated  
  
 Usage:  
   area = getAblationArea( userdata, visitag )  
 Where:  
   userdata - see importcarto_mem.m  
   visitag - see importvisitag.m  
   ablArea - the total area of the chamber that has been ablated  
   isAblated - indexes into userdata.surface.triRep.Triangulation and  
               indicates whether a particular triangle is considered  
               ablated (1) or not (0).  
   trAbl - a Triangulation of the ablated tissue  
  
 GETABLATIONAREA accepts the following parameter-value pairs  
   'method'     {'tags'}|'grid'  
       - specifies whether to calculate area based on the ablation tags or  
         the ablation grid  
   'radius'    {5}|double  
       - specifies the radius around each ablation tag to consider ablated  
   'thresholdmethod'    {'on'}|'off'  
       - NOT YET IMPLEMENTED  
   'thresholdvalue'  
       - NOT YET INMPLEMENTED  
  
 GETABLATIONAREA Requires a userdata structure and a visitag structure as  
 its input. TODO: complete description.  
  

**Author**  Steven Williams (2020)

##  getAnatomicalStructures

* in
  * userdata
  *  varargin 

* out
  * FF, l, a, tr


 GETANATOMICALSTRUCTURES Returns free boundaries (anatomical structures)  
 described in userdata  
  
 Usage:  
   [trAnatStruct] = getAnatomicalStructures( userdata, varargin )  
 Where:  
   userdata   - see importcarto_mem  
   FF         - see TriRep/freeBoundary, cell array  
   l          - array of lengths of each free boundary  
   a          - an array of areas of each free boundary  
   tr         - cell array of triangulations of each free boundary  
  
 GETANATOMICALSTRUCTURES accepts the following parameter-value pairs  
   'plot'     {false}|true  
  

**Author**  Steven Williams (2020)

##  getArea

* in
  * userdata
  *  varargin 

* out
  * area


 GETAREA Returns the surface area of the chamber geometry  
  
 Usage:  
   area = getArea( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   area  - the surface area (cm^2)  
  
 GETAREA accepts the following parameter-value pairs  
   'method'     {nofill}|fill  
  
 GETAREA Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getClosedSurface

* in
  * userdata 

* out
  * tr


 GETCLOSEDSURFACE Fills all the holes in the userdata surface  
  
 Usage:  
   tr = getClosedSurface( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   tr  - a triRep object  
  
 GETCLOSEDSURFACE Closes the surface by the following algorithm. First,  
 every complete free boundary is identified. Second, the barycentre of the  
 free boundary is identified. Third, a triangulation is created covering  
 this hole. Finally, the additional triangles are added to the triRep.  
  

**Author**  Steven Williams (2020)

##  getConductionVelocity

* in
  * userdata 

* out
  * cvdata


 GETCONDUCTIONVELOCITY Returns the total conduction velocity map of the   
 chamber  
  
 Usage:  
   cvdata = getConductionVelocity( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   cvdata  - the conduction velocities, in m/s  
  
 GETCONDUCTIONVELOCITY Calculate conduction velocities by calculating  
 gradients of interpolated local activation times. GETCONDUCTIONVELOCITY  
 makes use of a modified version of "Scattered Data Interpolation and   
 Approximation using Radial Base Functions" available from the Matlab  
 FileExchange:  
  
 Alex Chirokov (2020). Scattered Data Interpolation and Approximation   
 using Radial Base Functions (https://www.mathworks.com/matlabcentral/fileexchange/10056-scattered-data-interpolation-and-approximation-using-radial-base-functions), MATLAB Central File Exchange. Retrieved November 24, 2020.  
  

**Author**  Steven Williams (2020)

##  getEarliestActivationSite

* in
  * userdata
  *  varargin 

* out
  * X, surfX, iPoint, t


 GETEARLIESTACTIVATIONSITE Returns the earliest activation site  
  
 Usage:  
   [X] = getEarliestActivationSite( userdata )  
   [X, surfX] = getEarliestActivationSite( userdata )  
   [X, surfX, iPoint] = getEarliestActivationSite( userdata )  
   [X, surfX, iPoint, t] = getEarliestActivationSite( userdata )  
  
 Where:  
   userdata    - see importcarto_mem  
   X           - the earliest activation site, in x,y,z format. For  
                   map-based methods (i.e. 'clinmap', 'clinmapprct',  
                   'openepmap'and 'openepmapprct'), X is identical to  
                   surfX.  
   surfX       - the surface projection of the eariest activation site  
   iPoint      - the closest mapping point to the earliest activation  
                   site. For point-based methods (i.e. 'ptbased' or   
                   'ptbasedprct'), iPoint indexes into userdata.electric.  
                   For map-based methods (i.e. 'clinmap', 'clinmapprct',  
                   'openepmap', 'openepmapprct'), iPoint indexes into  
                   userdata.surface.triRep.X. For percentile methods (i.e.  
                   'ptbasedprct', 'cinmapprct' or 'openepmapprct') iPoint  
                   returns all the points that were identified within the  
                   relevant percentile.  
   t           - the calculated earliest activation time, relative to the  
                   reference annotation  
  
 GETEARLIESTACTIVATIONSITE accepts the following parameter-value pairs  
   'method'    {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'  
       - Specifies the method by which the earliest activation is  
           calculated, as follows:  
       'ptbased'    - Calculates the earliest activation time using   
                       mapping points exported by the clinical system.  
       'ptbasedprct'- Calculates the earliest 2.5th percentile mapping   
                       times on the exported electrogram annotations, then   
                       calculates the mean of this sets of activation times.  
       'clinmap'    - Calculates the earliest activation time on the   
                       local activation time map created by the clinical   
                       mapping system  
       'clinmapprct'- First calculates the earliest 2.5th percentile   
                       mapping times on the clinical local activation time   
                       map, then calculates the mean of these sets of   
                       activation times.  
       'openepmap'  - Calculates the earliest activation time on the local   
                       activation time map created by OpenEP from the   
                       exported electrogram annotations.  
       'openepmapprct'- First calculates the earliest 2.5th percentile   
                       mapping times on the local activation time map   
                       created by OpenEP from the exported electrogram   
                       annotations. Then calculates the mean of this set of   
                       activation times.  
   'prct'       {2.5}|[prct]  
       - The percentile to use for percentile mapping; only applicable if  
       'method' is 'percentile'.  
  
 GETEARLIESTACTIVATIONSITE By identifying the earliest activatin site,  
 this function can be used, for example, to identify the site in the  
 chamber closest to the pacing site.   
  
 See also GETTOTALACTIVATIONTIME, GETLATESTACTIVATIONSITE.  
  

**Author**  Steven Williams (2019)

##  getEgmsAtPoints

* in
  * userdata
  *  varargin 

* out
  * egmTraces, acttime, egmNames


 GETEGMSATPOINTS Can be used to access eletrograms from userdata  
  
 Usage:  
   [ hFig ] = plotOpenEPEgms( userdata, varargin )  
   [ hFig, hLine ] = plotOpenEPEgms( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
   egmTraces - cell array of the requested electrograms  
   acttime   - cell array of activation times   
   egmNames  - names of the electrograms  
  
 GETEGMSATPOINTS accepts the following parameter-value pairs  
   'iEgm'     {:}|[a:b]  
           an array indexing into userdata.electric.egm such that  
          %   'iEgm'     {:}|[a:b]  
           an array indexing into userdata.electric.egm such that  
           userdata.electric.egm(iEgmArray,:) are selected for plotting  
           To convert from Carto point numbers to iEgmArray use  
           getIndexFromCartoPointNumber.  
   'egmtype'   'bip'|'uni'|{'bip-uni'}  
           Whether to plot only the bipolar electrograms, only the  
           unipolar electrograms or both  
   'reference' 'off'|{'on'}  
           Whether to plot the reference channel, off by default userdata.electric.egm(iEgmArray,:) are selected for plotting  
           To convert from Carto point numbers to iEgmArray use  
           getIndexFromCartoPointNumber.  
  
 GETEGMSATPOINTS by default returns all the electrograms of 'egmtype'. Use   
 getIndexFromCartoPointNumber to convert from point numbers to index   
 numbers.  
  
 TODO: Devolve the functionality of plotOpenEPEgms to getEgmsAtPoints  
  

**Author**  Steven Williams (2020)

##  getFaces

* in
  * userdata 

* out
  * faces


 GETFACES Returns the faces referenced by userdata  
  
 Usage:  
   faces = getFaces( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   faces - all the faces  
  

**Author**  Steven Williams (2020)

##  getIndexFromCartoPointNumber

* in
  * userdata
  *  pointNumber

* out
  * index


 GETINDEXFROMCARTOPOINTNUMBER finds the electrode at xyz.  
  
 Usage:  
   [index] = getIndexFromCartoPointNumber(pointNumber)  
 Where:  
   useredata   - a userdata structure  
   pointNumber - a point number (or array of point numbers) as displayed  
                 on the Carto mapping system  
   index       - an index (or array of indices) for referenceing into the  
                 data fields within userdata.electric  
  
 GETINDEXFROMCARTOPOINTNUMBER Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getLatestActivationSite

* in
  * userdata
  *  varargin 

* out
  * X, surfX, iPoint, t


 GETLATESTACTIVATIONSITE Returns the earliest activation site  
  
 Usage:  
   [X] = getLatestActivationSite( userdata )  
   [X, surfX] = getLatestActivationSite( userdata )  
   [X, surfX, iPoint] = getLatestActivationSite( userdata )  
   [X, surfX, iPoint, t] = getLatestActivationSite( userdata )  
  
 Where:  
   userdata    - see importcarto_mem  
   X           - the latest activation site, in x,y,z format. For  
                   map-based methods (i.e. 'clinmap', 'clinmapprct',  
                   'openepmap'and 'openepmapprct'), X is identical to  
                   surfX.  
   surfX       - the surface projection of the latest activation site  
   iPoint      - the closest mapping point to the latest activation  
                   site. For point-based methods (i.e. 'ptbased' or   
                   'ptbasedprct'), iPoint indexes into userdata.electric.  
                   For map-based methods (i.e. 'clinmap', 'clinmapprct',  
                   'openepmap', 'openepmapprct'), iPoint indexes into  
                   userdata.surface.triRep.X. For percentile methods (i.e.  
                   'ptbasedprct', 'cinmapprct' or 'openepmapprct') iPoint  
                   returns all the points that were identified within the  
                   relevant percentile.  
   t           - the calculated latest activation time, relative to the  
                   reference annotation  
  
 GETLATESTACTIVATIONSITE accepts the following parameter-value pairs  
   'method'    {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'  
       - Specifies the method by which the earliest activation is  
           calculated, as follows:  
       'ptbased'    - Calculates the latest activation time using the   
                       mapping points exported by the clinical system.  
       'ptbasedprct'- Calculates the latest 2.5th percentile mapping   
                       times on the exported electrogram annotations, then   
                       calculates the mean of this sets of activation times.  
       'clinmap'    - Calculates the latest activation time on the   
                       local activation time map created by the clinical   
                       mapping system  
       'clinmapprct'- First calculates the latest 2.5th percentile   
                       mapping times on the clinical local activation time   
                       map, then calculates the mean of these sets of   
                       activation times.  
       'openepmap'  - Calculates the latest activation time on the local   
                       activation time map created by OpenEP from the   
                       exported electrogram annotations.  
       'openepmapprct'- First calculates the latest 2.5th percentile   
                       mapping times on the local activation time map   
                       created by OpenEP from the exported electrogram   
                       annotations. Then calculates the mean of this set of   
                       activation times.  
   'prct'       {2.5}|[prct]  
       - The percentile to use for percentile mapping; only applicable if  
       'method' is 'percentile'.  
  
 GETLATESTACTIVATOINSITE By identifying the latest activatin site,  
 this function can be used, for example, to calculate the total activation  
 time.   
  
 See also GETTOTALACTIVATIONTIME, GETEARLIESTACTIVATIONSITE.  
  

**Author**  Steven Williams (2019)

##  getLowVoltageArea

* in
  * userdata
  *  varargin 

* out
  * lowVoltageArea, voltages, iTri, tr2


 GETLOWVOLTAGEAREA Returns the low voltage area  
  
 Usage:  
   lowVoltageArea = getLowVoltageArea( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
   lowVoltageArea  - the low voltage area (cm^2)  
   voltages - the voltages point values used to calculate areas  
   iTri - indexes into userdata.surface.triRep.Triangulation and refers  
          to the triangles that have voltage values within the range,  
          threshld  
   tr2 - a triangulation of all the triangles referenced in iTri.  
  
  
 GETLOWVOLTAGEAREA accepts the following parameter-value pairs  
   'method'    {'map'}      |'egm'  
   'type'      {bip'}       |'uni'  
   'threshold' {[0.0 0.5]}  |[t]  
  
 GETLOWVOLTAGEAREA Returns the surface area of the chamber with voltage  
 less than the specified threshold, 0.5mV by default. By default low  
 voltage area is calculated using the surface data (stored in  
 userdat.surface).  
  
 If 'method' is set to 'egm' then the bipolar voltage is first  
 interpolated from the bipolar electrogram data (stored in  
 userdata.electric).  
  
 If 'type' is set to 'uni' then unipolar voltages are used for surface  
 area calculation.  
  
        sIFace = trVertToFaceData(tr, sI);  
        iTri = zeros(size(sIFace));  
        iTri(sIFace<threshold(2) & sIFace>threshold(1)) = 1; %keep these ones  
        triangleInclude = tr.Triangulation;  
        triangleInclude(~logical(iTri),:) = [];  
        if ~isempty(triangleInclude)  
            tr2 = TriRep(triangleInclude, tr.X);  
              
            % Calculate the thresholded area  
            areas2 = triarea(tr2);  
            a = sum(areas2)/100;  
        else  
            a = 0;  
            tr2 = [];  
        end  
    end  
end  

**Author**  Steven Williams (2020)

##  getMappingPointsWithinWoI

* in
  * userdata 

* out
  * iPoint


 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with  
 annotated local activation time within the window of interest  
  
 Usage:  
   iPoint = getMappingPointsWithinWoI( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   iPoint  - the list of valid points; indexes into userdata.electric  
  
 GETMAPPINGPOINTSWITHINWOI Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getMeanVoltage

* in
  * userdata
  *  varargin 

* out
  * meanVoltage


 GETMEANVOLTAGE Returns the mean voltage  
  
 Usage:  
   meanVoltage = getMeanVoltage( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
   meanVoltage  - the mean chamber voltage (mV)  
  
 GETMEANVOLTAGE accepts the following parameter-value pairs  
   'method'    {'map'}|'egm'  
   'type'      {bip'}|'uni'  
  
 GETMEANVOLTAGE Returns the mean voltage of a chamnber. By default, the  
 mean bipolar voltage is calculated using the interpolated mapping data  
 from the clinical mapping system (stored in userdata.surface.act_bip).  
  
 If 'method' is set to 'egm' then the bipolar voltage is first  
 interpolated from the bipolar electrogram data (stored in  
 userdata.electric).  
  
 If 'type' is set to 'uni' then unipolar voltages are returned.  
  

**Author**  Steven Williams (2020)

##  getMesh

* in
  * userdata
  *  varargin

* out
  * tr


 GETMESH Returns the triangulation-based mesh from userdata  
  
 Usage:  
   tr = getMesh(userdata)  
 Where:  
   tr - a TriRep object  
  
 GETMESH accepts the following parameter-value pairs  
   'type'     {'trirep'}|'triangulation'  
       - Specifies whether to return the mesh as a TriRep object or as a  
       Triangulation object  
  

**Author**  Steven Williams (2020)

##  getNumPts

* in
  * userdata 

* out
  * numpts


 GETNUMPTS Returns the number of mapping points in userdata  
  
 Usage:  
   numpts = getNumPts( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   numpts  - the number of mapping points  
  
 GETNUMPTS Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getPointImpedanceValue

* in
  * imp
  *  tim

* out
  * a


 GETPOINTIMPEDANCEVALUE Provides an algorithm for giving point impedance  
 values  
  
 Usage:  
   h = myfunction(b)  
 Where:  
   a - is the output  
   imp - impedance values at times tim  
  
 Impedance values are streaming every 100ms to Carto 3 system from the   
 RF Generator. A time range of -7.5s to +2.5s is output for each point and  
 saved in userdata.electric.impedances (.time and .value) in the mat  
 files.  
  
 GETPOINTIMPEDANCEVALUE converts these time series to a single value by  
 taking the peak impedance immediately prior to the 0 time point.  
  

**Author**  Steven Williams (2014)

##  getSurfaceData

* in
  * userdata
  *  datatype 

* out
  * data


 GETSURFACEDATA Returns the data, datatype, from userdata  
  
 Usage:  
   data = getMappingData( userdata, datatype )  
 Where:  
   userdata  - see importcarto_mem  
   datatype  - the required data. Must be one of:  
       'act', 'bip'  
  
 GETSURFACEDATA Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getTotalActivationTime

* in
  * userdata
  *  varargin 

* out
  * tat


 GETTOTALACTIVATIONTIME Returns the total activation time of the chamber  
  
 Usage:  
   tat = getTotalActivationTime( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   tat  - the total activation time, in ms  
  
 GETTOTALACTIVATIONTIME accepts the following parameter-value pairs  
   'method'    {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'  
       - Specifies the method by which total activation time is calculated  
         as follows:  
       'ptbased'    - Calculates the difference in activation time between   
                       the earliest and latest activation time mapping   
                       points exported by the clinical system.  
       'ptbasedprct'- First calculates the earliest 2.5th percentile and   
                       the latest 2.5th percentile mapping times on the   
                       exported electrogram annotations, then calculates   
                       the difference between the means of these sets of   
                       activation times.  
       'clinmap'    - Calculates the difference between the earliest and   
                       latest activation times on the local activation   
                       time map created by the clinical mapping system  
       'clinmapprct'- First calculates the earliest 2.5th percentile and   
                       latest 2.5th percentile mapping times on the   
                       clinical local activation time map, then calculates   
                       the difference between the means of these sets of   
                       activation times.  
       'openepmap'  - Calculates the difference between the earliest and   
                       latest activation times on the local activation   
                       time map created by OpenEP from the exported   
                       electrogram annotations.  
       'openepmapprct'- First calculates the earliest 2.5th percentile and   
                       latest 2.5th percentile mapping times on the local   
                       activation time map created by OpenEP from the   
                       exported electrogram annotations. Then calculates   
                       the difference between the means of these sets of   
                       activation times.  
   'prct'   {2.5}|[prct]  
       - The percentile to use for percentile mapping; only applicable if  
        'method' is one of 'ptbasedprct', 'clinmapprct' or 'openepmapprct'.  
  
 GETTOTALACTIVATIONTIME Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  getVertices

* in
  * userdata 

* out
  * vertices, isVertUsed


 GETVERTICES Returns the vertices referenced by userdata  
  
 Usage:  
   [vertices, vertsref] = getVertices( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   vertices - all the vertices  
   isVertUsed - whether the vertex is referenced by the triangulation  
  

**Author**  Steven Williams (2020)

##  getVolume

* in
  * userdata 

* out
  *  volume 


 GETVOLUME Calculates the volume the chamber described in userdata  
  
 Usage:  
   volume = getVolume(usredata)  
 Where:  
   userdata  - see importcarto_mem  
   volume  - the volume, in cm^3  
  
 GETVOLUME For details of the calculation see:  
   https://stackoverflow.com/questions/1406029/how-to-calculate-the-volume-of-a-3d-mesh-object-the-surface-of-which-is-made-up  
   http://chenlab.ece.cornell.edu/Publication/Cha/icip01_Cha.pdf  
   EFFICIENT FEATURE EXTRACTION FOR 2D/3D OBJECTS IN MESH REPRESENTATION  
  
        % p1, p2, p3 are the three vertices of a triangle  
        v321 = p3(1) * p2(2) * p1(3);  
        v231 = p2(1) * p3(2) * p1(3);  
        v312 = p3(1) * p1(2) * p2(3);  
        v132 = p1(1) * p3(2) * p2(3);  
        v213 = p2(1) * p1(2) * p3(3);  
        v123 = p1(1) * p2(2) * p3(3);  
          
        vol = (1/6) * (-v321 + v231 + v312 - v132 - v213 + v123);  
    end  
end  

**Author**  Steven Williams (2017)

##  getpointelectrogramname

* in
  * point_xyz
  *  pointFileName

* out
  * electrogramname_bip, electrogramname_uni, point_xyz_2 


 GETELCTRODENAME finds the electrode at xyz.  
 Usage:  
   [ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )  
 Where:  
   point_xyz  -   
   pointFileName  -   
   electrogramname_bip  - the electrode name for the bipolar electrogram at point_xyz  
   electrogramname_uni - cell array of the electrode names for the  
       unipolar electrogram at point_xyz and it's associated second electrode  
       that makes up electrogramname_bip  
   point_xyz_2 - the electrode position corresponding to the second electrode  
       that makes up the bipole at point_xyz (needed for locating unipolar  
       electrograms)  
  
 GETELCTRODENAME Detailed description  
  
 ** ERROR noticed 30-4-2020. This program assumes sequential number of  
 ** electrodes in the _onAnnotation files; however this was not the case for  
 ** a Carto 3V6 case using the Pentaray connected to 20A connector. Note  
 ** the numbering goes 1,2 then 1,2,3,4 repeatedly in column 1. This means  
 ** that Lasso 1,2 or Lasso 3,4 were always identified as the recording  
 ** electrodes, in contradiction to the header in the ECG_Export.txt file.  
 **  
 **       File 1-LA_P2_MAGNETIC_20_POLE_A_CONNECTOR_Electrode_Positions_OnAnnotation.txt  
 **       Eleclectrode_Positions_2.0  
 **       Electrode# Time X Y Z  
 **       1 -1 -18.4089 -46.1829 81.5786  
 **       2 -1 -22.1867 -53.66 86.9808  
 **       1 -1 -13.6522 -29.4837 85.2534  
 **       2 -1 -14.026 -30.9731 83.9839  
 **       3 -1 -15.0154 -35.7805 80.5865  
 **       4 -1 -15.3354 -37.4648 79.7378  
 **       1 -1 -5.21543 -33.8042 78.6199  
 **       2 -1 -6.45994 -35.0289 77.845  
 **       3 -1 -11.0587 -38.1983 77.0946  
 **       4 -1 -12.7287 -39.1731 77.3427  
 **       1 -1 -7.75467 -49.9424 73.8663  
 **       2 -1 -8.91601 -48.3531 74.1426  
 **       3 -1 -12.692 -43.955 75.4862  
 **       4 -1 -13.9689 -42.8323 76.1126  
 **       1 -1 -12.3655 -29.5709 79.5005  
 **       2 -1 -13.411 -30.7094 78.4787  
 **       3 -1 -15.571 -35.4638 77.1105  
 **       4 -1 -16.0402 -37.3789 77.2001  
 **       1 -1 -25.5615 -30.9667 80.2972  
 **       2 -1 -24.2683 -32.4533 79.986  
 **       3 -1 -20.1096 -36.6017 78.8712  
 **       4 -1 -18.8193 -37.9237 78.5741  
  

**Author**  Nick Linton (2012)

##  getpointelectrogramname

* in
  * point_xyz
  *  pointFileName

* out
  * electrogramname_bip, electrogramname_uni, point_xyz_2 


 GETELCTRODENAME finds the electrode at xyz.  
  
 Usage:  
   [ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )  
 Where:  
   point_xyz  -   
   pointFileName  -   
   electrogramname_bip  - the electrode name for the bipolar electrogram at point_xyz  
   electrogramname_uni - cell array of the electrode names for the  
       unipolar electrogram at point_xyz and it's associated second electrode  
       that makes up electrogramname_bip  
   point_xyz_2 - the electrode position corresponding to the second electrode  
       that makes up the bipole at point_xyz (needed for locating unipolar  
       electrograms)  
  
 GETELCTRODENAME Detailed description  
  
 ** ERROR noticed 30-4-2020. This program assumes sequential number of  
 ** electrodes in the _onAnnotation files; however this was not the case for  
 ** a Carto 3V6 case using the Pentaray connected to 20A connector. Note  
 ** the numbering goes 1,2 then 1,2,3,4 repeatedly in column 1. This means  
 ** that Lasso 1,2 or Lasso 3,4 were always identified as the recording  
 ** electrodes, in contradiction to the header in the ECG_Export.txt file.  
 **  
 **       File 1-LA_P2_MAGNETIC_20_POLE_A_CONNECTOR_Electrode_Positions_OnAnnotation.txt  
 **       Eleclectrode_Positions_2.0  
 **       Electrode# Time X Y Z  
 **       1 -1 -18.4089 -46.1829 81.5786  
 **       2 -1 -22.1867 -53.66 86.9808  
 **       1 -1 -13.6522 -29.4837 85.2534  
 **       2 -1 -14.026 -30.9731 83.9839  
 **       3 -1 -15.0154 -35.7805 80.5865  
 **       4 -1 -15.3354 -37.4648 79.7378  
 **       1 -1 -5.21543 -33.8042 78.6199  
 **       2 -1 -6.45994 -35.0289 77.845  
 **       3 -1 -11.0587 -38.1983 77.0946  
 **       4 -1 -12.7287 -39.1731 77.3427  
 **       1 -1 -7.75467 -49.9424 73.8663  
 **       2 -1 -8.91601 -48.3531 74.1426  
 **       3 -1 -12.692 -43.955 75.4862  
 **       4 -1 -13.9689 -42.8323 76.1126  
 **       1 -1 -12.3655 -29.5709 79.5005  
 **       2 -1 -13.411 -30.7094 78.4787  
 **       3 -1 -15.571 -35.4638 77.1105  
 **       4 -1 -16.0402 -37.3789 77.2001  
 **       1 -1 -25.5615 -30.9667 80.2972  
 **       2 -1 -24.2683 -32.4533 79.986  
 **       3 -1 -20.1096 -36.6017 78.8712  
 **       4 -1 -18.8193 -37.9237 78.5741  
  

**Author**  Nick Linton (2012)

##  importcarto_mem

* in
  * varargin

* out
  * userdata, matFileFullPath


 IMPORTCARTO provides a data structure from multiple carto files (from zip).  
 Usage:  
   userdata = importcarto_mem(userinput)  
   userdata = importcarto_mem()  
   [userdata, matFileFullPath] = ...  
 Where:  
   dirName is the directory with all of the files corresponding to a map  
   userdata is a single data structure  
   matFileFullPath is the path to the .mat file, if opened or saved  
  
 IMPORTCARTO can load data in 3 ways:  
   1) USERINPUT is a .zip file - the zip file will be unzipped into a  
   temporary file (deleted at the end). The data is packed into userdata  
   and the user is incouraged to save this for the future (long time take  
   to unzip).  
   2) USERINPUT is a .mat file containing userdata  
   3) USERINPUT is a .xml file - this must be the xml file in a folder  
   containing all the other Carto3 files.  
  
 userdata structure ...  
   .surface  
       .triRep         - TriRep object for the surface  
       .isVertexAtRim  - logical array indicating vertices at a 'rim'  
       .act_bip        - nVertices*2 array of activation and voltage data  
       .uni_imp_frc    - nVertices*3 array of uni voltage, impedance and contact force  
   .electric  
       .isPointLocationOnly    - logical array  
       .tags  
       .names  
       .egmX           - location of point  
       .egmSurfX       - location of surface nearest point  
       .barDirection   - normal to surface at egmSurfX  
       .egm            - electrogram  
       .egmRef         - electrogram of reference  
       .ecg            - ecg  
       .force            
           .force    - instantaneous force recording  
           .axialAngle    - axial angle  
           .lateralAngle  - lateral angle  
           .time_force - time course of force [(:,:,1)=time, (:,:,2)=force]  
           .time_axial - time course of axial angle [(:,:,1)=time, (:,:,2)=axial angle]  
           .time_lateral - time course of lateral angle [(:,:,1)=time, (:,:,2)=lateral angle]  
 Check that filename has an exact match in allfilenames. If not, then  
 search through filenames to see if there is a single string that contains  
 searchstring. If not then return empty string;  
    tf = strcmp(filename, allfilenames);  
    if any(tf)  
        fname = filename;  
        return  
    end  
    k = strfind(allfilenames, searchstring);  
    iMatch = [];  
    for i = 1:length(k)  
        if ~isempty(k{i})  
            if ~isempty(iMatch)  
                % we have already found a match  
                warning('IMPORTCARTO3: there is more than one file that could represent this point.')  
                fname = [];  
                return;  
            else  
                iMatch = i;  
            end  
        end  
    end  
    if isempty(iMatch)  
        fname = [];  
        warning(['IMPORTCARTO3: the filename relating to ' char(39) searchstring char(39) ' is unexpected and no match was found.'])  
    else  
        fname = allfilenames{iMatch};  
        warning(['IMPORTCARTO3: the filename relating to ' char(39) searchstring char(39) ' is unexpected but a match was found - ' fname])  
    end  
end  

**Author**  Nick Linton (2011)

##  importcarto_mem

* in
  * varargin

* out
  * userdata, matFileFullPath


 IMPORTCARTO provides a data structure from multiple carto files (from zip).  
 Usage:  
   userdata = importcarto_mem(userinput)  
   userdata = importcarto_mem()  
   [userdata, matFileFullPath] = ...  
 Where:  
   dirName is the directory with all of the files corresponding to a map  
   userdata is a single data structure  
   matFileFullPath is the path to the .mat file, if opened or saved  
  
 IMPORTCARTO can load data in 3 ways:  
   1) USERINPUT is a .zip file - the zip file will be unzipped into a  
   temporary file (deleted at the end). The data is packed into userdata  
   and the user is incouraged to save this for the future (long time take  
   to unzip).  
   2) USERINPUT is a .mat file containing userdata  
   3) USERINPUT is a .xml file - this must be the xml file in a folder  
   containing all the other Carto3 files.  
  
 IMPORTCARTO_MEM accepts the following parameter-value pairs  
   'maptoread'     {''}|string|double  
       Specifies which map to read. Can be a string referring  
       to the map name or a double referring to the number of points in the  
       map. If there are multiple maps with the same number of points an error  
       will be thrown.  
   'refchannel'    {''}|string  
       The name of the channel to pick as the refence channel. Typically  
       this is the pacing channel for the map. Specify a string such as  
       'CS9-CS10'.  
   'ecgchannel'    {''}|string  
       The name of the channel to pick as the ECG channel. Typically  
       this is an informative ECG such as V1. Specify a string such as  
       'V1'.  
   'savefilename'       {''}|string  
       The full path to the location in which to save the output.  
   'verbose'       {true}|false  
       Not yet implemented  
  
 userdata structure ...  
   .surface  
       .triRep         - TriRep object for the surface  
       .isVertexAtRim  - logical array indicating vertices at a 'rim'  
       .act_bip        - nVertices*2 array of activation and voltage data  
       .uni_imp_frc    - nVertices*3 array of uni voltage, impedance and contact force  
   .electric  
       .isPointLocationOnly    - logical array  
       .tags  
       .names  
       .egmX           - location of point  
       .egmSurfX       - location of surface nearest point  
       .barDirection   - normal to surface at egmSurfX  
       .egm            - bipolar electrogram  
       .egmUni         - matrix of unipolar electrograms  
       .egmUniX        - localtion of unipolar points  
       .egmRef         - electrogram of reference  
       .ecg            - ecg  
       .force  
           .force    - instantaneous force recording  
           .axialAngle    - axial angle  
           .lateralAngle  - lateral angle  
           .time_force - time course of force [(:,:,1)=time, (:,:,2)=force]  
           .time_axial - time course of axial angle [(:,:,1)=time, (:,:,2)=axial angle]  
           .time_lateral - time course of lateral angle [(:,:,1)=time, (:,:,2)=lateral angle]  
 Check that filename has an exact match in allfilenames. If not, then  
 search through filenames to see if there is a single string that contains  
 searchstring. If not then return empty string;  
tf = strcmp(filename, allfilenames);  
if any(tf)  
    fname = filename;  
    return  
end  
k = strfind(allfilenames, searchstring);  
iMatch = [];  
for i = 1:length(k)  
    if ~isempty(k{i})  
        if ~isempty(iMatch)  
            % we have already found a match  
              
            warning('IMPORTCARTO3: there is more than one file that could represent this point.')  
            fname = [];  
            return;  
        else  
            iMatch = i;  
        end  
    end  
end  
if isempty(iMatch)  
    fname = [];  
    warning(['IMPORTCARTO3: the filename relating to ' char(39) searchstring char(39) ' is unexpected and no match was found.'])  
else  
    fname = allfilenames{iMatch};  
    warning(['IMPORTCARTO3: the filename relating to ' char(39) searchstring char(39) ' is unexpected but a match was found - ' fname])  
end  
end  

**Author**  Nick Linton (2011)

##  importvisitag

* in
  * dirName

* out
  * visitag


 IMPORTVISITAG provides a data structure from carto visitag files.  
 Usage  
   visitag = importvisitag(dirName)  
   visitag = imporvisitag()  
 Where:  
   dirName is the directory with all of the files corresponding to WiseTag  
   visitag is a single data structure  
  
 IMPORTVISITAG detailed description goes here.  
  
 visitag structure ...  
   .originaldata  
   .tag  
       .X  
       .surfX  
       .FTI  
   .grid  
       .X  
       .surfX  
       .FTI  
  
    function colId = lCol(allNames, requiredName) %l for local  
        if iscell(requiredName)  
            for iName = 1:numel(requiredName)  
                colId(iName) = find(strcmpi(allNames, requiredName{iName}));  
            end  
        else  
            colId = find(strcmpi(allNames, requiredName));  
        end  
    end  
  
end  
  
  

**Author**  Steven Williams (2014)

##  importvisitag

* in
  * varargin

* out
  * visitag, matFileFullPath


 IMPORTVISITAG provides a data structure from carto visitag files.  
 Usage  
   visitag = importvisitag(dirName)  
   visitag = imporvisitag()  
 Where:  
   dirName is the directory with all of the files corresponding to WiseTag  
   visitag is a single data structure  
  
 IMPORTVISITAG detailed description goes here.  
  
 visitag structure ...  
   .originaldata  
   .tag  
       .X  
       .surfX  
       .FTI  
   .grid  
       .X  
       .surfX  
       .FTI  
  

**Author**  Steven Williams (2014)

##  openEP2VTK

* in
  * userdata
  *  varargin

* out
  * path2VTKfile


 OPENEP2VTK Converts a Carto mesh file to VTK file  
  
 Usage:  
   tr = openEP2VTK('openfile')  
 Where:  
   tr  - a TriRep object  
   path2VTKfile - the path to the file that was written  
  
 OPENEP2VTK accepts the following parameter-value pairs  
   'datatype'     {'bip'}|'uni'|'lat'  
       - the required data, bipolar voltage, unipolar voltage or local  
       activation time  
   'method'       {'map'}|'egm'  
       - the method of accessing the data; clinical-system map based  
       ('map') or re-inteprolated by OpenEP from the raw egms ('egm');  
   'outputfile'  
       - absolute path to the output file.   
       If empty then openEP2VTK outputs the VTK file to the current   
        directory using the current date/time as the filename  
       If strcmpi('outputfile','openfile') a GUI is used to place the  
        file  
  
 OPENEP2VTK Converts between userdata OpenEP format and VTK format. This  
 function takes map data i.e. userdata.surface data and writes it to the  
 VTK file.  
  

**Author**  Steven Williams (2020)

##  plotAblationArea

* in
  * userdata
  *  visitag

* out
  * 


 PLOTABLATIONAREA Adds the ablation area to the current figure  
  
 Usage:  
   plotAblationArea( userdata, visitag )  
 Where:  
   userdata - see importcarto_mem.m  
   visitag - see importvisitag.m  
  
 PLOTABLATIONAREA Requires a userdata structure and a visitag structure as   
 its inputS  
  

**Author**  Steven Williams (2020)

##  plotElectrograms

* in
  * egmTraces
  *  varargin

* out
  * hFig


 PLOTELECTROGRAMS Draws any number of electrograms in line.  
  
 Usage:  
   hFig = PLOTELECTROGRAMS(egmTraces)  
   hFig = PLOTELECTROGRAMS(egmTraces, varargin)  
  
 PLOTELECTROGRAMS parameter-value pairs can be passed in as follows:  
 'egmNames', cell array of electrogram names  
 'range', two value vector [xmin xmax]  
 'sampleRate', the sample rate in Hz  
 'paperSpeed', the paper speed for plotting  
 'separation', the separation between electrograms, default is 5mV  
 'clipping', two value vector [clipmin clipmax] in mV  
 'gain', the gain, default is 2  
 'autogain', if true the electrograms are automatically scaled, default false  
 'acttime', a vector of activation times to be plotted as red crosses  
 'egmColors', cell array of colors. Same size as egmNames  
  
 INSTRUCTIONS FOR A4 EGM PAGE  
 1. Save figure as an .EPS file.  
 2. Open in Corel draw and export as a .PDF file.  
  
 INSTRUCTIONS FOR TIMING SINGLE BEAT TRACES  
 The default position gives a width of 300pixels, which corresponds to an  
 x axis width of 68.44mm. The number of samples to plot in this  
 width (ie width of 'range' parameter) is given by:  
   n = (sampleRate / paperSpeed) * 68.44  
 For example, at 1000Hz range should be specified as having width:  
   25mm/s  - 2738  [-1119 1619]  
   100mm/s - 684  
   200mm/s - 342  
  
  
 See also PLOTOPENEPEGMS  
  
 Info on Code Testing:  
 ---------------------------------------------------------------  
 For an A4 page:  
     pageSize = [5 0 29.7 21.0]; %A4 landscape  
     plotElectrogram(egm ...  
         , 'range', axisRange ...  
         , 'paperSpeed', hBg.paperSpeed ...  
         , 'position', pageSize ...  
         , 'units', 'centimeters' ...  
         , 'name', 'Exported from BardGUI' ...  
         , 'sampleRate', hBg.hBard.SampleRate ...  
         , 'autogain', true ...  
         );  
 ---------------------------------------------------------------  
  
 ---------------------------------------------------------------  
 code  
 ---------------------------------------------------------------  
 Validate input  
p = inputParser;  
p.addRequired('egmTraces', @iscell);  
p.addParamValue('egmNames', {}, @iscellstr);  
p.addParamValue('range', [NaN NaN], @(x)isnumeric(x) && numel(x)==2);  
p.addParamValue('sampleRate', NaN, @(x)isnumeric(x) && numel(x)==1);  
p.addParamValue('paperSpeed', NaN, @isnumeric);  
p.addParamValue('units', 'pixels', @(x)ischar(x) && strcmpi(x, 'pixels') || strcmpi(x, 'centimeters'));  
p.addParamValue('position', [200 200 300 600], @(x)isnumeric(x) && numel(x)==4);  
p.addParamValue('name', 'name', @isstr);  
p.addParamValue('separation', 5, @(x)isnumeric(x) && numel(x)==1);  
p.addParamValue('clipping', [-4 4], @(x)isnumeric(x) && numel(x)==2);  
p.addParamValue('gain', 2, @(x)isnumeric(x) && numel(x)==1);  
p.addParamValue('autogain', false, @islogical);  
p.addParamValue('center', false, @islogical);  
p.addParamValue('acttime', 0, @isnumeric);  
p.addParamValue('egmColors', {}, @iscellstr);  
p.addParamValue('axis', []);  
p.addParamValue('title', 'on', @isstr);  
p.parse(egmTraces, varargin{:});  
inputs = p.Results;  
egmTraces = inputs.egmTraces;  
numEgm = numel(egmTraces);  
len = NaN(numEgm,1);  
for i = 1:numEgm  
    len(i) = length(egmTraces{i});  
end  
lengthEgm = nanmax(len);  
paperSpeed = inputs.paperSpeed;  
units = inputs.units;  
position = inputs.position;  
name = inputs.name;  
separation = inputs.separation; %mV  
clipping = inputs.clipping; %mV  
gain = inputs.gain;  
autogain = inputs.autogain;  
center = inputs.center;  
acttime = inputs.acttime;  
ax = inputs.axis;  
titleText = inputs.title;  
if isempty(inputs.egmNames)  
    egmNames = num2cell(1:numEgm);  
else  
    egmNames = inputs.egmNames;  
end  
if isnan(inputs.range)  
    range = [1 lengthEgm];  
else  
    range = inputs.range;  
end  
if isnan(inputs.sampleRate)  
    sampleRate = 1000;  
    sampleRateTitle = 'NaN';  
    xAxisLabel = 'samples';  
else  
    sampleRate = inputs.sampleRate;  
    sampleRateTitle = num2str(sampleRate);  
    xAxisLabel = 'time (s)';  
end  
if ~isempty(inputs.egmColors)  
    egmColors = fliplr(inputs.egmColors);  
else  
    egmColors = cell(1,numel(egmNames));  
    egmColors(:) = {'k'};  
end  
 Set up the figure  
if isempty(ax)  
    hFig = figure;  
    set(hFig, 'color', 'w' ...  
        , 'units', units ...  
        , 'position', position ...  
        , 'name', name ...  
        );  
end  
 If necessary add zeros to the start or end of the trace  
deltaTime = range(2) - range(1) + 1;  
egm = NaN(floor(deltaTime), numEgm);  
for i = 1:numEgm  
    try  
        egm(:,i) = egmTraces{i};  
    catch MeX  
        if center  
            lengthDif = length(egm(:,i)) - length(egmTraces{i});  
            egm(floor(lengthDif/2+1):floor(lengthDif/2+length(egmTraces{i})),i) = egmTraces{i};  
        else  
            if range(1) < 0 % fill the left of the trace with zeros  
                egm(end-length(egmTraces{i})+1:end,i) = egmTraces{i};  
                disp(['PLOTELECTROGRAM: ' MeX.message ' Adding zeros to electrogram: ' egmNames{i}]);  
            else % fill the right of the trace with zeros  
                egm(1:length(egmTraces{i}),i) = egmTraces{i};  
                disp(['PLOTELECTROGRAM: ' MeX.message ' Adding zeros to electrogram: ' egmNames{i}]);  
            end  
        end  
    end  
end  
 Apply gain, clipping and spacing  
if (autogain)  
    for i = 1:numEgm  
       egmDelta = nanmax(egm(:,i)) - nanmin(egm(:,i));  
       multiplier = 0.9*separation/egmDelta;  
       egm(:,i) = egm(:,i) * multiplier;  
    end  
else  
    egm = egm .* gain;  
end  
egm(egm>clipping(2)) = clipping(2);  
egm(egm<clipping(1)) = clipping(1);  
for i = 1:numEgm  
    egm(:,i) = egm(:,i) + separation * i;  
end  
 Draw the electrograms  
time = range(1):range(2);  
time = time';  
xValues = repmat(time, [1, numEgm]);  
for i = 1:size(xValues,2)  
    line(xValues(:,i), egm(time,i) ...  
        , 'color', colorBrewer(egmColors{i}) ...  
        , 'linewidth', 1 ...  
        );  
      
    yTickPos = separation:separation:separation*numEgm;  
    yTickLabel = egmNames;  
      
    set(gca, 'YTick', yTickPos ...  
        , 'YTickLabel', yTickLabel ...  
        , 'YLim', [0 separation*(numEgm+1)] ...  
        , 'XLim', [range(1) range(2)] ...  
        , 'Color', 'w' ...  
        );  
    %    , 'Position', [0.09 0.11 0.861 0.815] ... % Fine adjustment for speed  
      
      
    % Draw the acttimes  
    if ~acttime==0  
        hold on  
        yVal = separation:separation:numel(acttime)*separation;  
        plot(acttime, yVal, 'r.', 'markersize', 20);  
    end  
      
    % Sort out the x axis labels  
    xTick = get(gca, 'XTick');  
    xTickLabel = xTick / (sampleRate/1000);  
    set(gca, 'XTickLabel', round(xTickLabel));  
      
    % Set the title and the x-axis label  
    if strcmpi(titleText, 'off')  
       % do nothing  
    else  
        title(['Paper Speed: ' num2str(paperSpeed) ' mm/s | Sample Rate: ' sampleRateTitle ' Hz']);  
    end  
    if isnan(sampleRate)  
        xlabel('samples');  
    else  
        xlabel(xAxisLabel);  
    end  
      
    % Turn on the grid lines  
    %set(gca, 'XGrid', 'on');  
      
end  

**Author**  Steven Williams (2012)

##  plotOpenEPEgms

* in
  * userdata
  *  varargin 

* out
  * hFig


 PLOTOPENEPEGMS Can be used to plot eletrograms from userdata  
  
 Usage:  
   [ hFig ] = plotOpenEPEgms( userdata, varargin )  
   [ hFig, hLine ] = plotOpenEPEgms( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
   hFig - a handle to the plotted figure  
  
 PLOTOPENEPEGMS accepts the following parameter-value pairs  
   'iEgm'     {:}|[a:b]  
           an array indexing into userdata.electric.egm such that  
          %   'iEgm'     {:}|[a:b]  
           an array indexing into userdata.electric.egm such that  
           userdata.electric.egm(iEgmArray,:) are selected for plotting  
           To convert from Carto point numbers to iEgmArray use  
           getIndexFromCartoPointNumber.  
   'range'         {'window'}|'all'  
           By default ('window') only the electrogram within the window of  
           interest is drawn (±buffer). By specifying 'all' the entire point  
           electrogram is drawn.  
   'buffer'        {50}|[buffer]  
           The time before and after the window of interest to draw. By  
           default, 20ms, but can be changed by setting 'buffer' to an  
           alternative value.  
   'egmtype'   'bip'|'uni'|{'bip-uni'}  
           Whether to plot only the bipolar electrograms, only the  
           unipolar electrograms or both  
   'reference' 'off'|{'on'}  
           Whether to plot the reference channel, off by default userdata.electric.egm(iEgmArray,:) are selected for plotting  
           To convert from Carto point numbers to iEgmArray use  
           getIndexFromCartoPointNumber.  
  
 PLOTOPENEPEGMS is a wrapper function for plotElectrograms.  
  

**Author**  Steven Williams (2017)

##  plotTag

* in
  * userdata
  *  varargin 

* out
  * h


 PLOTTAG Plots tag(s) on the current map  
  
 Usage:  
   area = plotTag( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
   h(i) - is an array of handles referencing the plotted surfaces  
  
 PLOTTAG accepts the following parameter-value pairs  
   'coord'     {[x y x]}  
       - A set of x,y,z coords where size(coords) = nx3 where n is the  
       number of tags to plot  
   'pointnum'  [p1, p2, ... pn]  
       - An array of size nx1 where n is the number of tags to plot  
   'color'     {'r'}|'g'|'b'|'p'|'o'|'y'  
       - The color of the tag to draw  
   'size'  
       - The size of the tag to draw  
  
 PLOTTAG Detailed description goes here  
  

**Author**  Steven Williams (2020)

##  plotVisitags

* in
  * userdata
  *  visitag
  *  varargin

* out
  * 


 PLOTVISITAGS Plots ablation data for a case  
  
 Usage:  
   [ vol ] = plotVisitags( userdata, visitag )  
 Where:  
   userdata - see importcarto_mem.m  
   visitag - see importvisitag.m  
  
 PLOTVISITAG accepts the following parameter-value pairs  
   'plot'     {'tags'}|'grid'|'both'  
       - specifies whether to show the tags, the grid, or both  
   'shell'    {'on'}|'off'  
       - specifies whether to show the chamber shell  
   'colour'    {'r'}|colorspec|array       
       - can be a string or colorspec specifying the color of all the  
       spheres  
       - can be an array of double values which is rendered as a  
       colorscale  
   'orientation'   see drawMap.m  
  
 PLOTVISITAG Requires a userdata structure and a visitag structure as its  
 input  
  

**Author**  Steven Williams (2020)

##  pointStatus

* in
  * userdata
  *  varargin 

* out
  * inoutpts, meshpts


 POINTSTATUS Returns the status of points relevant to userdata  
  
 Usage:  
   [inoutpts, meshrefpts] = pointStatus( userdata )  
 Where:  
   userdata  - see importcarto_mem  
   inoutpts  - whether points are internal (logical(1)) or external  
               (logical(0)) to the triangulation in userdata  
   meshpts   - whether points in the triRep field of userdata are  
               referenced in the triangulation (logical(1)) or not  
               (logical(0))  
  
 POINTSTATUS accepts the following parameter-value pairs:  
   'distanceThreshold' 2|[d]  
       - The distance threshold within which points are considered to be  
         internal or external to the triangulation  
   'plot'     {false}|true  
  
 Dependences: POINTSTATUS depends on the package INPOLYHEDRON. See:  
   https://uk.mathworks.com/matlabcentral/fileexchange/37856-inpolyhedron-are-points-inside-a-triangulated-volume  
  

**Author**  Steven Williams (2020)

##  processSmartTouchForceData

* in
  * userdata
  *  varargin

* out
  * hSurf


 PROCESSSMARTTOUCHFORCEDATA Gets a shell with force data  
 Usage:  
   [tr f] = processSmartTouchForceData(userdata)  
 Where:  
   userdata - is a Carto dataset  
   f - are the 1000ms window forces  
   loc - are the coordinates of the data in f (size: length(f) * 3)   
  
 PROCESSSMARTTOUCHFORCEDATA parses the force data at ablation points from  
 userdata.  
  
 Properties:  
   drawforcemap:       {'false'} | 'true'  
   * distancethreshold:  numeric, default=4  
   * showcolorbar            show | {hide}  
   * colorbarlocation    north | south | east | {west} | northoutside |  
                       southoutside | eastoutside | westoutside  
   * coloraxis           [caxismin caxismax] | {[min(min(data)) max(max(data))]}  
 * Passed directly to colorShell, and ignored if drawforcemap='false' or  
 empty  
  

**Author**  Steven Williams (2013)

##  read_ecgfile_v4

* in
  * varargin

* out
  * varargout


 READ_ECGFILE loads this Carto3 ecg file.  
 Usage:  
   channelNames = read_ecgfile(filename);  
   [channelNames channelVoltages] = read_ecgfile(filename)  
   channelVoltages = read_ecgfile(filename, names)  
 Where:  
   channelVoltages channelNames are voltages and names  
   filename is the Carto3 .txt file  
   names is optional and is the desired channel names - this helps speed  

**Author**  Nick Linton (2013)

##  read_ecgfile_v4_header

* in
  * varargin

* out
  * varargout


 READ_ECGFILE_V4_HEADER loads the header from an ECG file.  
 Usage:  
   [electrodename_bip] = read_ecgfile_v4_header(varargin)  
   [electrodename_bip electrodename_uni] = read_ecgfile_v4_header(varargin)  
   [electrodename_bip electrodename_uni electrodename_ref] = read_ecgfile_v4_header(varargin)  
 Where:  
   electrodename_bip   is the name of the electrode pair collecting the bipolar mapping point  
   electrodename_uni   is the name of the electrode collecting the unipolar mapping point  
   electrodename_ref   is the name of the reference electrode for the mapping point  
  
        name = '';  
        for j = 1:numel(iNeeded)  
            name = [name separator tokens{iNeeded(j)}];  
        end  
        name(1) = [];  
    end  
end  

**Author**  Steven Williams (2020)

##  read_forcefile_v2

* in
  * varargin

* out
  * varargout


 READ_FORCEFILE loads this Carto3 force file.  
 Usage:  
   force = read_forcefile(filename);  
   [force axialAngle lateralAngle] = read_forcefile(filename)  
   [force axialAngle lateralAngle t_time t_force t_axialAngle t_lateralAngle] = read_forcefile(filename)  
 Where:  
   force - is the fixed time point force for this point  
   axialAngle - is the fixed time point axial angle for this point  
   lateralAngle - is the fixed time point lateral angle for this point  
   t_time - is the time array (e.g. -7000ms->5000ms) for the time data  
   t_force - is the time course of force  
   t_axialAngle - is the time course of the axial angle  
   t_lateralAngle - is the time course of the lateral angle  
  
   filename is the Carto3 .txt file  
  

**Author**  Steven Williams (2013)

##  read_meshfile

* in
  * filename

* out
  * varargout


 READ_MESHFILE loads this Carto3 mesh file.  
 Usage:  
   t = read_meshfile(filename)  
   [t isVertexAtEdge] = read_meshfile(filename)  
   [t isVertexAtEdge act_bip normals] = read_meshfile(filename)  
 Where:  
   filename is the filename  
   t is a TriRep object  
   isVertexAtEdge is a logical array indicating vertices at an edge  
   act_bip is a matrix of activation times and bipolar voltage by vertex  
  
 READ_MESHFILE reads the triangulation from a TriangulatedMeshVersion 2.0  
 file.  

**Author**  Nick Linton (2011)

##  read_positions_on_annotation_v2

* in
  * varargin

* out
  * iElectrode xyz


 READ_POSITIONS_ON_ANNOTATION_V2 loads this Carto3 position file.  
 Usage:  
   [iElectrode xyz] = read_positions_on_annotation_v2(filename)  
 Where:  
   iElectrode is a vector of electrode numbers  
   xyz is an array of xyz positions  

**Author**  Nick Linton (2013)

##  read_visitag_file_v1

* in
  * filepath 

* out
  *  data, header 


 READ_VISITAG_FILE_V1 Reads a data file stored in a WiseTag or VisiTag  
 directory  
  
 Usage:  
   [ data, header ] = read_visitag_file_v1( filepath )  
 Where:  
   filepath  - path to the file to be read  
   data  - the the file data  
   header  - the file header  
  
 READ_VISITAG_FILE_V1 Reads numeric data from data files stored in WiseTag or  
 VisiTag directories. These files all have a standard format - header line  
 followed by data lines; tab delimited. The headers are returned in a cell  
 array to allow search/indexing.  
  

**Author**  Steven Williams (2020)

##  read_visitag_sites

* in
  * varargin

* out
  * data, labels


 READ_VISITAG_SITES loads Carto3 visitag sites.txt file.  
 Usage:  
   [sites] = read_visitag_sites(filename)  
 Where:  
   data is a matrix of all the data from the file  
   labels is a cell array of the header lines from the file  
   filename is the full file path  
  
 READ_VISITAG_SITES detailed description goes here  
  

**Author**  Steven Williams (2015)

##  read_visitagsettings

* in
  * varargin

* out
  * visitagSettings


 READ_VISITAGSETTINGS loads Carto3 visitag settings file.  
 Usage:  
   [visitagSettings] = read_visitagsettings(filename)  
 Where:  
   visitagSettings is a structure of the visitag settings  
   filename is the full file path  
  
 READ_VISITAGSETTINGS creates a structure with the parameters in  
 VisiTagSettings.txt. Data is converted to double if it is numeric or  
 remains as a string if it is a string. Beware of equals sign at the end  
 of the parameter names - these are currently removed by the code but  
 would be an obvious source of future errors.  
  

**Author**  Steven Williams (2015)

##  voltageHistogramAnalysis

* in
  * userdata
  *  varargin 

* out
  * areas


 VOLTAGEHISTOGRAMANALYSIS Returns the mean voltage  
  
 Usage:  
   areas = plotVoltageHistogram( userdata, varargin )  
 Where:  
   userdata  - see importcarto_mem  
  
 GETMEANVOLTAGE accepts the following parameter-value pairs  
   'method'    {'map'}|'egm'  
   'type'      {bip'}|'uni'  
   'threshold' n x 2 matrix of threshold values; default:  
             [ 0.01 0.11  
               0.11 0.21  
               0.21 0.30  
               0.30 0.40  
               0.40 0.50 ]  
   'plot'      {false} | true  
   areas       The chamber areas within each of the voltage thresholds  
   colors      {colorBrewer colors r, y, g, b, p}|  
  
 PLOTVOLTAGEHISTOGRAM displays a histogram of voltages coloured according  
 to voltages, threshold.  
  
 If 'method' is set to 'egm' then the bipolar voltage is first  
 interpolated from the bipolar electrogram data (stored in  
 userdata.electric).  
  
 If 'type' is set to 'uni' then unipolar voltages are used.  
  

**Author**  Steven Williams (2020)
