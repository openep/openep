---
title: API Reference
subtitle: >-
  Documentation for each available function
layout: page
---

<style>
.post-content p {
  margin: 0;
}

.post-content {
  font-size: 90%;
}

.post-content h2 {
  padding-top: 85pt;
  margin-top: -85pt;
}

pre.highlight {
  padding: 5pt;
  font-size: 90%;
}

td>p {
  margin: 0;
}

td {
  padding: 0;
}

pre.highlight {
  padding: 5pt;
  font-size: 90%;
}

td>p {
  margin: 0;
}

td {
  padding: 0;//
}

.apilinks {
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  flex-wrap: wrap;
  margin: 0 -0.83333em 1.66667em;
}

.apilinks div {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex: 0 0 33.333%;
  -ms-flex: 0 0 33.333%;
  flex: 0 0 33.333%;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
}

.apilinks a {
  width: max-content;
}
</style>

<div class="apilinks">


<div class="apilink"><a href="#cartomesh2vtk">cartoMesh2VTK</a></div>
<div class="apilink"><a href="#cemrg2carto">cemrg2carto</a></div>
<div class="apilink"><a href="#cvhistogram">cvHistogram</a></div>
<div class="apilink"><a href="#distancebetweenpoints">distanceBetweenPoints</a></div>
<div class="apilink"><a href="#drawmap">drawMap</a></div>
<div class="apilink"><a href="#edituserdata">editUserdata</a></div>
<div class="apilink"><a href="#fixvoltageannotations">fixVoltageAnnotations</a></div>
<div class="apilink"><a href="#generateinterpdata">generateInterpData</a></div>
<div class="apilink"><a href="#getablationarea">getAblationArea</a></div>
<div class="apilink"><a href="#getanatomicalstructures">getAnatomicalStructures</a></div>
<div class="apilink"><a href="#getarea">getArea</a></div>
<div class="apilink"><a href="#getcentreofmass">getCentreOfMass</a></div>
<div class="apilink"><a href="#getclosedsurface">getClosedSurface</a></div>
<div class="apilink"><a href="#getconductionvelocity">getConductionVelocity</a></div>
<div class="apilink"><a href="#getearliestactivationsite">getEarliestActivationSite</a></div>
<div class="apilink"><a href="#getegmsatpoints">getEgmsAtPoints</a></div>
<div class="apilink"><a href="#getelectrogramduration">getElectrogramDuration</a></div>
<div class="apilink"><a href="#getelectrogramx">getElectrogramX</a></div>
<div class="apilink"><a href="#getfaces">getFaces</a></div>
<div class="apilink"><a href="#getimpedancevalues">getImpedanceValues</a></div>
<div class="apilink"><a href="#getindexfromcartopointnumber">getIndexFromCartoPointNumber</a></div>
<div class="apilink"><a href="#getlatestactivationsite">getLatestActivationSite</a></div>
<div class="apilink"><a href="#getlowvoltagearea">getLowVoltageArea</a></div>
<div class="apilink"><a href="#getmappingpointswithinmesh">getMappingPointsWithinMesh</a></div>
<div class="apilink"><a href="#getmappingpointswithinwoi">getMappingPointsWithinWoI</a></div>
<div class="apilink"><a href="#getmeanvoltage">getMeanVoltage</a></div>
<div class="apilink"><a href="#getmesh">getMesh</a></div>
<div class="apilink"><a href="#getnumpts">getNumPts</a></div>
<div class="apilink"><a href="#getpointimpedancevalue">getPointImpedanceValue</a></div>
<div class="apilink"><a href="#getreferenceannotation">getReferenceAnnotation</a></div>
<div class="apilink"><a href="#getsurfacedata">getSurfaceData</a></div>
<div class="apilink"><a href="#gettotalactivationtime">getTotalActivationTime</a></div>
<div class="apilink"><a href="#getvertices">getVertices</a></div>
<div class="apilink"><a href="#getvolume">getVolume</a></div>
<div class="apilink"><a href="#getwindowofinterest">getWindowOfInterest</a></div>
<div class="apilink"><a href="#getpointelectrogramname">getpointelectrogramname</a></div>
<div class="apilink"><a href="#getpointelectrogramname">getpointelectrogramname</a></div>
<div class="apilink"><a href="#importcarto_mem">importcarto_mem</a></div>
<div class="apilink"><a href="#importcarto_mem">importcarto_mem</a></div>
<div class="apilink"><a href="#importvisitag">importvisitag</a></div>
<div class="apilink"><a href="#importvisitag">importvisitag</a></div>
<div class="apilink"><a href="#openep2vtk">openEP2VTK</a></div>
<div class="apilink"><a href="#plotablationarea">plotAblationArea</a></div>
<div class="apilink"><a href="#plotelectrograms">plotElectrograms</a></div>
<div class="apilink"><a href="#plotopenepegms">plotOpenEPEgms</a></div>
<div class="apilink"><a href="#plottag">plotTag</a></div>
<div class="apilink"><a href="#plotvisitags">plotVisitags</a></div>
<div class="apilink"><a href="#pointstatus">pointStatus</a></div>
<div class="apilink"><a href="#processsmarttouchforcedata">processSmartTouchForceData</a></div>
<div class="apilink"><a href="#read_ecgfile_v4">read_ecgfile_v4</a></div>
<div class="apilink"><a href="#read_ecgfile_v4_header">read_ecgfile_v4_header</a></div>
<div class="apilink"><a href="#read_forcefile_v2">read_forcefile_v2</a></div>
<div class="apilink"><a href="#read_meshfile">read_meshfile</a></div>
<div class="apilink"><a href="#read_positions_on_annotation_v2">read_positions_on_annotation_v2</a></div>
<div class="apilink"><a href="#read_visitag_file_v1">read_visitag_file_v1</a></div>
<div class="apilink"><a href="#read_visitag_sites">read_visitag_sites</a></div>
<div class="apilink"><a href="#read_visitagsettings">read_visitagsettings</a></div>
<div class="apilink"><a href="#voltagehistogramanalysis">voltageHistogramAnalysis</a></div>
</div>




## cartoMesh2VTK

 CARTOMESH2VTK Converts a Carto mesh file to VTK file

 

#### Usage
```m
tr = cartoMesh2VTK('openfile')
```

#### Parameters

**tr,**  
&nbsp;&nbsp;&nbsp;&nbsp;a TriRep object  


#### Description
 CARTOMESH2VTK Converts a Carto3 mesh to a VTK file and returns a TriRep
 object

**Author**  Steven Williams (2015) (Copyright)

---


## cemrg2carto

 CEMRG2CARTO Converts a VTK for loading into Carto
 

#### Usage
```m
op = cemrg2carto(infile, outfile)
```

#### Parameters

**infile**  
&nbsp;&nbsp;&nbsp;&nbsp;a VTK file created by CEMRG  

**outfile**  
&nbsp;&nbsp;&nbsp;&nbsp;a VTK file formatted for Carto  


#### Description
 Where:
   infile - a VTK file created by CEMRG
   outfile - a VTK file formatted for Carto

**Author**  Steven Williams (2016)

---


## cvHistogram

 CVHISTOGRAM Draws a conduction velocity histogram

 

#### Usage
```m
cvHistogram( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

#### Parameter Value Pairs

**'limits'    {[0 5]} \| array**  

**'binwidth'  {0.1} \| double**  


#### Description
 CVHISTOGRAM displays a histogram of conduction velocities. Limits are set
 to exclude non-physiological conduction velocities

**Author**  Steven Williams (2020) (Copyright)

---


## distanceBetweenPoints

 DISTANCEBETWEENPOINTS Returns the distance from A to B.
 

#### Usage
```m
distance = distanceBetweenPoints(userdata, A, B)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**P1**  
&nbsp;&nbsp;&nbsp;&nbsp;is the first point  

**P2**  
&nbsp;&nbsp;&nbsp;&nbsp;is the second point  

#### Parameter Value Pairs

**'method'    {'linear'} \| 'geodesic'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies whether to calcualte linear or geodesic distances  

**'plot'      {false} \| true**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies whether to draw a figure  


#### Description
 DISTBETWEENPOINTS returns the distance from A to B. A and B are specified
 as row vectors [x, y, z] or matrices, with rows representing different
 points. If npoints in A and B are different A must specify one and only
 one point.

**Author**  Steven Williams (2020) (Copyright)

---


## drawMap

 DRAWMAP plots an OpenEP map
 

#### Usage
```m
hSurf = drawMap(userdata)
hSurf = drawMap(userdata, varargin);
```

#### Parameters

**hSurf**  
&nbsp;&nbsp;&nbsp;&nbsp;is a handle to the surface  

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;is a Carto data structure  

#### Parameter Value Pairs

**'data' {[]} \| [d]**  
&nbsp;&nbsp;&nbsp;&nbsp;- Where d is a vector of data values and size(d) equals numel(userdata.surface.triRep.X)  

**'type'  {'act'} \| 'bip' \| 'force' \| 'uni' \| 'none' \| 'cv'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies type of map - activation, bipolar or unipolar voltage  

**'coloraxis' {[]} \| [a b]**  
&nbsp;&nbsp;&nbsp;&nbsp;- Where a and b are real numbers. See help colorShell  

**'noLight' {false} \| true**  
&nbsp;&nbsp;&nbsp;&nbsp;- If set to true no additional light will be drawn. Useful if  
&nbsp;&nbsp;&nbsp;&nbsp;overlaying maps.  

**'usrColorMap' {[]}\|cMap**  
&nbsp;&nbsp;&nbsp;&nbsp;- If set, this colormap will be used instead of the defaults  
&nbsp;&nbsp;&nbsp;&nbsp;colorbarlocation    'north' \| 'south' \| 'east' \| 'west' \| 'northoutside' \|  

**'southoutside' \| 'eastoutside' \| {'westoutside'}**  

**'orientation' {'AP'} \| 'PA'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies the view as AP or PA. LAO, RAO, LL, RL yet to be  
&nbsp;&nbsp;&nbsp;&nbsp;defined  

**'colorfillthreshold'   {10} \| c**  
&nbsp;&nbsp;&nbsp;&nbsp;- Where c is a scalar value; defaulting to 10mm  


#### Description
 DRAWMAP is a wrapper function for colorShell.m which allows OpenEP data 
 to be plotted. 

**Author**  Steven Williams (2016) (Copyright)

---


## editUserdata

 EDITUSERDATA Graphically remove regions from a Carto dataset

 

#### Usage
```m
userdata2 = editUserdata(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;is the original Carto dataset  

**userdata2**  
&nbsp;&nbsp;&nbsp;&nbsp;is the new Carto dataset with elements removed  


#### Description
 EDITUSERDATA uses EDITTRIANGULATION to remove triangles from a TriRep
 object. Controls:
   Left click          - select triangles to remove
   Shift-Left click    - select triangles to keep
   Ctrl-Left click     - select area up to the boundary
   d                   - done

**Author**  Steven Williams (2016) (Copyright)

---


## fixVoltageAnnotations

 FIXVOLTAGEANNOTATIONS Fixes the uni/bip reversal identified in
 userdata.electric.voltages in August 2014. This function is not required
 for any userdata .mat files created after 27th August 2014.

 

#### Usage
```m
userdata = fixVoltageAnnotations(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;is the output  

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;is the input, or 'openfile'  


#### Description
 FIXVOLTAGEANNOTATIONS detailed description goes here.

**Author**  Steven Williams (2014) (Copyright)

---


## generateInterpData

 GENERATEINTERPDATA Performs spatial interpolation of scalar data

 

#### Usage
```m
interpData = generateInterpData(userdata, datatype)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see, importcarto_mem  

**datatype**  
&nbsp;&nbsp;&nbsp;&nbsp;the desired data type to return  

**interpData**  
&nbsp;&nbsp;&nbsp;&nbsp;is the interpolated data  

#### Parameter Value Pairs

**'interMethod'    'nearest'\|'linear'\|{'natural'}**  
&nbsp;&nbsp;&nbsp;&nbsp;- The interpolation method, default to natural  

**'exterMethod'    {nearest}\|linear\|none**  
&nbsp;&nbsp;&nbsp;&nbsp;- The extrapolation method, defaults to linear  

**'distanceThresh' {10}\|double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The distance threshold, d, default 10mm  


#### Description
 GENERATEINTERPDDATA performs spatial interpolation of scalar data.
 Userdata and datatype are mandatory arguments. Datatype may be one of:
         'bip-map' - bipolar voltage; from the exported voltage values
         'uni-map' - unipolar voltage; from the exported voltage values
         'lat-map' - local activation time; from the annotated electrograms
         'bip-egm' - bipolar voltage; measured by OpenEP on the egms (NOT IMPLEMENTED)
         'uni-egm' - unipolar voltage; measured by OpenEP on the egms (NOT IMPLEMENTED)
         'lat-egm' - local activation time; measured by OpenEP on the egms (NOT IMPLEMENTED)
         'cv' - conduction velocity
         'egmduration' - electrogram duration
 GENERATEINTERPDATA removes any NaN values in data (and their
 corresponding location(s) in coords) before calling scatteredInterpolant
 with the interpolation/extrapolation methods specified. Any values greater
 than distancethresh are removed.

**Author**  Steven Williams (2018) (Copyright)

---


## getAblationArea

 GETABLATIONAREA Calculates the area of a chamber which has been ablated

 

#### Usage
```m
[ablArea, isAblated, trAbl] = getAblationArea( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem.m  

**ablArea**  
&nbsp;&nbsp;&nbsp;&nbsp;the total area of the chamber that has been ablated  

**isAblated**  
&nbsp;&nbsp;&nbsp;&nbsp;indexes into userdata.surface.triRep.Triangulation and  
&nbsp;&nbsp;&nbsp;&nbsp;               indicates whether a particular triangle is considered  
&nbsp;&nbsp;&nbsp;&nbsp;               ablated (1) or not (0).  

**trAbl**  
&nbsp;&nbsp;&nbsp;&nbsp;a Triangulation of the ablated tissue  

#### Parameter Value Pairs

**'method'     {'tags'}\|'grid'**  
&nbsp;&nbsp;&nbsp;&nbsp;- specifies whether to calculate area based on the ablation tags or  
&nbsp;&nbsp;&nbsp;&nbsp;the ablation grid  

**'radius'    {5}\|double**  
&nbsp;&nbsp;&nbsp;&nbsp;- specifies the radius around each ablation tag to consider ablated  

**'thresholdmethod'    {'on'}\|'off'**  
&nbsp;&nbsp;&nbsp;&nbsp;- NOT YET IMPLEMENTED  

**'thresholdvalue'**  
&nbsp;&nbsp;&nbsp;&nbsp;- NOT YET INMPLEMENTED  


#### Description
 GETABLATIONAREA Requires a userdata structure which contains .rfindex as
 its input, which can be created using importvisitag.m

**Author**  Steven Williams (2020) (Copyright)

---


## getAnatomicalStructures

 GETANATOMICALSTRUCTURES Returns the free boundaries (anatomical 
 structures) described in userdata

 

#### Usage
```m
[FF, l, a, tr] = getAnatomicalStructures( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**FF**  
&nbsp;&nbsp;&nbsp;&nbsp;see TriRep/freeBoundary, cell array  

**l**  
&nbsp;&nbsp;&nbsp;&nbsp;array of lengths (perimeters) of each anatomical structure  

**a**  
&nbsp;&nbsp;&nbsp;&nbsp;an array of areas of each anatomical structure  

**tr**  
&nbsp;&nbsp;&nbsp;&nbsp;cell array of triangulations of each anatomical structure  

#### Parameter Value Pairs

**'plot'     {false}\|true**  


#### Description
 GETANATOMICALSTRUCTURES identifies all the anatomical structures of a 
 given data set. Anatomical structures are boundary regions that have been 
 added to an anatomical model in the clinical mapping system. For example, 
 with respect of left atrial ablation, anatomical structures may represent 
 the pulmonary vein ostia, mitral valve annulus or left atrial appendage 
 ostium.

**Author**  Steven Williams (2020) (Copyright)

---


## getArea

 GETAREA Returns the surface area of an anatomical model

 

#### Usage
```m
area = getArea( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**area**  
&nbsp;&nbsp;&nbsp;&nbsp;the surface area (cm^2)  

#### Parameter Value Pairs

**'method'     {'nofill'}\|'fill'**  


#### Description
 GETAREA Returns the surface area of an anatomical model. The anatomical
 model can first be closed (filling any holes) by specifying the 'method',
 'fill' ('nofill' by default).

**Author**  Steven Williams (2020) (Copyright)

---


## getCentreOfMass

 GETCENTREOFMASS Returns the centre of mass of the anatomical model 
 defined in userdata

 

#### Usage
```m
C = getCentreOfMass( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**C**  
&nbsp;&nbsp;&nbsp;&nbsp;the Cartesian co-ordinates of the centre of mass  

#### Parameter Value Pairs

**'plot'     {false}\|true**  


#### Description
 GETCENTREOFMASS calculates the centre of mass of the userdata by
 accessing a closed surface via the OpenEP function getClosedSurface.m
 before using centroidOfPolyhedron.m to calculate the centre of mass. The
 function centroidOfPolyhedron.m was written by Isfandiyar RASHIDZADE,
 available through the Mathworks FileExchange:
     https://www.mathworks.com/matlabcentral/fileexchange/63614-centroid-of-triangulated-polyhedron

**Author**  Steven Williams (2020) (Copyright)

---


## getClosedSurface

 GETCLOSEDSURFACE Fills all the holes in the userdata surface

 

#### Usage
```m
tr = getClosedSurface( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**tr**  
&nbsp;&nbsp;&nbsp;&nbsp;a triRep object  


#### Description
 GETCLOSEDSURFACE Returns a new surface representation of the anatomical 
 model with all the holes in the mesh filed. Closes the surface by the 
 following algorithm. First, every complete free boundary is identified. 
 Second, the barycentre of the free boundary is identified. Third, a 
 triangulation is created covering this hole. Finally, the additional 
 triangles are added to the TriRep.

**Author**  Steven Williams (2020) (Copyright)

---


## getConductionVelocity

 GETCONDUCTIONVELOCITY Returns the conduction velocity map of the 
 chamber

 

#### Usage
```m
cvdata = getConductionVelocity( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**cvdata**  
&nbsp;&nbsp;&nbsp;&nbsp;the conduction velocities, in m/s  


#### Description
 GETCONDUCTIONVELOCITY Calculate conduction velocities by calculating
 gradients of interpolated local activation times. GETCONDUCTIONVELOCITY
 makes use of a modified version of "Scattered Data Interpolation and 
 Approximation using Radial Base Functions" available from the Matlab
 FileExchange: Alex Chirokov (2020). Scattered Data Interpolation and 
 Approximation using Radial Base Functions 
 (https://www.mathworks.com/matlabcentral/fileexchange/10056-scattered-data-interpolation-and-approximation-using-radial-base-functions), MATLAB Central File Exchange. Retrieved November 24, 2020.

**Author**  Steven Williams (2020) (Copyright)

---


## getEarliestActivationSite

 GETEARLIESTACTIVATIONSITE Returns the earliest activation site

 

#### Usage
```m
[X] = getEarliestActivationSite( userdata )
[X, surfX] = getEarliestActivationSite( userdata )
[X, surfX, iPoint] = getEarliestActivationSite( userdata )
[X, surfX, iPoint, t] = getEarliestActivationSite( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**X**  
&nbsp;&nbsp;&nbsp;&nbsp;the earliest activation site, in x,y,z format. For  
&nbsp;&nbsp;&nbsp;&nbsp;                   map-based methods (i.e. `clinmap`, `clinmapprct`,  
&nbsp;&nbsp;&nbsp;&nbsp;                   `openepmap` and `openepmapprct`), X is identical to  
&nbsp;&nbsp;&nbsp;&nbsp;                   surfX.  

**surfX**  
&nbsp;&nbsp;&nbsp;&nbsp;the surface projection of the eariest activation site  

**iPoint**  
&nbsp;&nbsp;&nbsp;&nbsp;the closest mapping point to the earliest activation  
&nbsp;&nbsp;&nbsp;&nbsp;                   site. For point-based methods (i.e. `ptbased` or   
&nbsp;&nbsp;&nbsp;&nbsp;                   `ptbasedprct`), iPoint indexes into userdata.electric.  
&nbsp;&nbsp;&nbsp;&nbsp;                   For map-based methods (i.e. `clinmap`, `clinmapprct`,  
&nbsp;&nbsp;&nbsp;&nbsp;                   `openepmap`, `openepmapprct`), iPoint indexes into  
&nbsp;&nbsp;&nbsp;&nbsp;                   userdata.surface.triRep.X. For percentile methods (i.e.  
&nbsp;&nbsp;&nbsp;&nbsp;                   `ptbasedprct`, `cinmapprct` or `openepmapprct`) iPoint  
&nbsp;&nbsp;&nbsp;&nbsp;                   returns all the points that were identified within the  
&nbsp;&nbsp;&nbsp;&nbsp;                   relevant percentile.  

**t**  
&nbsp;&nbsp;&nbsp;&nbsp;the calculated earliest activation time, relative to the  
&nbsp;&nbsp;&nbsp;&nbsp;                   reference annotation  

#### Parameter Value Pairs

**'method'    {'ptbased'} \| 'ptbasedprct' \| 'clinmap' \| 'clinmapprct' \| 'openepmap' \| 'openmapprct'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies the method by which the earliest activation is  
&nbsp;&nbsp;&nbsp;&nbsp;calculated.  

**'prct'       {2.5} \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The percentile to use for percentile mapping; only applicable if  
&nbsp;&nbsp;&nbsp;&nbsp;`'method'` is `'ptbasedprct'`, `'clinmapprct'` or `'openmapprct'`  


#### Description
 GETEARLIESTACTIVATIONSITE By identifying the earliest activatin site,
 this function can be used, for example, to identify the site in the
 chamber closest to the pacing site. Several alternative methods are provided for caluclating the latest 
 activation site, specified by setting the 'method' parameter-value pair 
 to one of the following options:
       `ptbased`    - Calculates the earliest activation time using 
                       mapping points exported by the clinical system.
       `ptbasedprct`- Calculates the 0-2.5th percentile mapping 
                       times on the exported electrogram annotations, then 
                       calculates the mean of this sets of activation times.
       `clinmap`    - Calculates the earliest activation time on the 
                       local activation time map created by the clinical 
                       mapping system
       `clinmapprct`- First calculates the 0-2.5th percentile 
                       mapping times on the clinical local activation time 
                       map, then calculates the mean of these sets of 
                       activation times.
       `openepmap`  - Calculates the earliest activation time on the local 
                       activation time map created by OpenEP from the 
                       exported electrogram annotations.
       `openepmapprct`- First calculates the 0-2.5th percentile 
                       mapping times on the local activation time map 
                       created by OpenEP from the exported electrogram 
                       annotations. Then calculates the mean of this set of 
                       activation times.

**Author**  Steven Williams (2019) (Copyright)

---


## getEgmsAtPoints

 GETEGMSATPOINTS Access eletrograms from stored in the OpenEP data format

 

#### Usage
```m
[egmTraces, acttime, egmNames] = getEgmsAtPoints( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**egmTraces**  
&nbsp;&nbsp;&nbsp;&nbsp;cell array of the requested electrograms  

**acttime**  
&nbsp;&nbsp;&nbsp;&nbsp;cell array of activation times   

**egmNames**  
&nbsp;&nbsp;&nbsp;&nbsp;names of the electrograms  

#### Parameter Value Pairs

**'iEgm'     {:}\|[a:b]**  
&nbsp;&nbsp;&nbsp;&nbsp;an array indexing into userdata.electric.egm such that  
&nbsp;&nbsp;&nbsp;&nbsp;userdata.electric.egm(iEgmArray,:) are selected for plotting  
&nbsp;&nbsp;&nbsp;&nbsp;To convert from Carto point numbers to iEgmArray use  
&nbsp;&nbsp;&nbsp;&nbsp;getIndexFromCartoPointNumber.  

**'egmtype'   'bip'\|'uni'\|{'bip-uni'}**  
&nbsp;&nbsp;&nbsp;&nbsp;Whether to plot only the bipolar electrograms, only the  
&nbsp;&nbsp;&nbsp;&nbsp;unipolar electrograms or both  

**'reference' 'off'\|{'on'}**  
&nbsp;&nbsp;&nbsp;&nbsp;Whether to plot the reference channel, off by default userdata.electric.egm(iEgmArray,:) are selected for plotting  
&nbsp;&nbsp;&nbsp;&nbsp;To convert from Carto point numbers to iEgmArray use  
&nbsp;&nbsp;&nbsp;&nbsp;getIndexFromCartoPointNumber.  


#### Description
 GETEGMSATPOINTS by default returns all the electrograms of 'egmtype'. Use 
 getIndexFromCartoPointNumber to convert from point numbers to index 
 numbers.

**Author**  Steven Williams (2020) (Copyright)

---


## getElectrogramDuration

 GETELECTROGRAMDURATION Returns the electrogram durations

 

#### Usage
```m
egmDuration = getElectrogramDuration( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**egmDuration**  
&nbsp;&nbsp;&nbsp;&nbsp;the duration of activation for each electrogram  


#### Description
 GETELECTROGRAMDURATION Calculates electrogram durations for each bipolar
 electrogram in userdata. The method is as follows. First, we iterate
 through all the bipolar mapping points in userdata.electric. For each
 mapping point we get the electrogram within the window of interest. We
 apply the non-linear energy operator to this electrogram. We identify the
 earliest and latest activation of the energy operator. We calculate the
 difference and assign that to egmDuration. We also remove any values that
 are not within +/- 2 standard deviations of the mean. This is an
 arbritary cut off but some filtering is necessary to avoid identifying
 noise as continuous activation, for example.

**Author**  Steven Williams (2020) (Copyright)

---


## getElectrogramX

 GETELECTROGRAMX Returns the the electrode recording positions

 

#### Usage
```m
C = getCentreOfMass( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**X**  
&nbsp;&nbsp;&nbsp;&nbsp;the 3D Cartesian co-ordinates  

**surfX**  
&nbsp;&nbsp;&nbsp;&nbsp;the surface-projected 3D Cartesian co-ordinates  

#### Parameter Value Pairs

**'type'     {'bip'}\|'uni'**  


#### Description
 GETELECTROGRAMX can be used to access the Cartesian co-ordinates of the
 electrodes used to record the electrograms.

**Author**  Steven Williams (2021) (Copyright)

---


## getFaces

 GETFACES Returns the faces referenced by userdata

 

#### Usage
```m
faces = getFaces( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**faces**  
&nbsp;&nbsp;&nbsp;&nbsp;all the faces  


#### Description
 GETFACES Returns the faces referenced by userdata

**Author**  Steven Williams (2020) (Copyright)

---


## getImpedanceValues

 GETIMPEDANCEVALUE Returns the impedance value of given point(s)

 

#### Usage
```m
imp = getImpedanceValue( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**imp**  
&nbsp;&nbsp;&nbsp;&nbsp;the impedance values (Ohms)  

#### Parameter Value Pairs

**'method'    {'map'} \| 'egm'**  

**'points'     {':'} \| int array**  

**'vertices'  {':'} \| int array**  


#### Description
 GETIMPEDANCEVALUES Returns the impedance values. By default, impedance
 values are returned for all the points in the map. If `method` is
 specified to be `egm` then impedance transients are returned for each
 individual mapping point, along with time intervals for the impedances.
 If one or more `vertices` are specified then impedance values are only 
 returned for those vertices (only valid if `method` is `map`). 
 If one or more `points` is specified then impedance values are only 
 returned for those mapping points (only valid if `method` is `egm`).

**Author**  Steven Williams (2020) (Copyright)

---


## getIndexFromCartoPointNumber

 GETINDEXFROMCARTOPOINTNUMBER Finds the index of the mapping point at the 
 point number displayed on the Carto mapping system.

 

#### Usage
```m
[index] = getIndexFromCartoPointNumber(pointNumber)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;a userdata structure  

**pointNumber**  
&nbsp;&nbsp;&nbsp;&nbsp;a point number (or array of point numbers) as displayed  
&nbsp;&nbsp;&nbsp;&nbsp;                 on the Carto mapping system  

**index**  
&nbsp;&nbsp;&nbsp;&nbsp;an index (or array of indices) for referencing into the  
&nbsp;&nbsp;&nbsp;&nbsp;                 data fields within userdata.electric  


#### Description
 GETINDEXFROMCARTOPOINTNUMBER Finds the index of the mapping point at the 
 point number displayed on the Carto mapping system.

**Author**  Steven Williams (2020) (Copyright)

---


## getLatestActivationSite

 GETLATESTACTIVATIONSITE Returns the latest activation site

 

#### Usage
```m
[X] = getLatestActivationSite( userdata )
[X, surfX] = getLatestActivationSite( userdata )
[X, surfX, iPoint] = getLatestActivationSite( userdata )
[X, surfX, iPoint, t] = getLatestActivationSite( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**X**  
&nbsp;&nbsp;&nbsp;&nbsp;Cartesian co-ordinates of the latest activation site. For  
&nbsp;&nbsp;&nbsp;&nbsp;                   map-based methods (i.e. `clinmap`, `clinmapprct`,  
&nbsp;&nbsp;&nbsp;&nbsp;                   `openepmap` and `openepmapprct`), X is identical to  
&nbsp;&nbsp;&nbsp;&nbsp;                   surfX.  

**surfX**  
&nbsp;&nbsp;&nbsp;&nbsp;The surface projection of the latest activation site  

**iPoint**  
&nbsp;&nbsp;&nbsp;&nbsp;The closest mapping point to the latest activation  
&nbsp;&nbsp;&nbsp;&nbsp;                   site. For point-based methods (i.e. `ptbased` or   
&nbsp;&nbsp;&nbsp;&nbsp;                   `ptbasedprct`), iPoint indexes into userdata.electric.  
&nbsp;&nbsp;&nbsp;&nbsp;                   For map-based methods (i.e. `clinmap`, `clinmapprct`,  
&nbsp;&nbsp;&nbsp;&nbsp;                   `openepmap`, `openepmapprct`), iPoint indexes into  
&nbsp;&nbsp;&nbsp;&nbsp;                   userdata.surface.triRep.X. For percentile methods (i.e.  
&nbsp;&nbsp;&nbsp;&nbsp;                   `ptbasedprct`, `clinmapprct` or `openepmapprct`) iPoint  
&nbsp;&nbsp;&nbsp;&nbsp;                   returns all the points that were identified within the  
&nbsp;&nbsp;&nbsp;&nbsp;                   relevant percentile.  

**t**  
&nbsp;&nbsp;&nbsp;&nbsp;The calculated latest activation time, relative to the  
&nbsp;&nbsp;&nbsp;&nbsp;                   reference annotation  

#### Parameter Value Pairs

**'method'    {'ptbased'}\|'ptbasedprct'\|'clinmap'\|'clinmapprct'\|'openepmap'\|'openmapprct'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies the method by which the latest activation is  
&nbsp;&nbsp;&nbsp;&nbsp;calculated.  

**'prct'       {2.5} \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The percentile to use for percentile mapping; only applicable if  
&nbsp;&nbsp;&nbsp;&nbsp;`'method'` is `'ptbasedprct'`, `'clinmapprct'` or `'openmapprct'`  


#### Description
 GETLATESTACTIVATOINSITE By identifying the latest activating site,
 this function can be used, for example, to calculate the total activation
 time. Several alternative methods are provided for caluclating the latest 
 activation site, specified by setting the 'method' parameter-value pair 
 to one of the following options:
       `ptbased`    - Calculates the latest activation time using the 
                       mapping points exported by the clinical system.
       `ptbasedprct`- Calculates the 97.5-100th percentile mapping 
                       times on the exported electrogram annotations, then 
                       calculates the mean of this sets of activation times.
       `clinmap`    - Calculates the latest activation time on the 
                       local activation time map created by the clinical 
                       mapping system
       `clinmapprct`- First calculates the 97.5-100th percentile 
                       mapping times on the clinical local activation time 
                       map, then calculates the mean of this set of 
                       activation times.
       `openepmap`  - Calculates the latest activation time on the local 
                       activation time map created by OpenEP from the 
                       exported electrogram annotations.
       `openepmapprct`- First calculates the 97.5-100th percentile 
                       mapping times on the local activation time map 
                       created by OpenEP from the exported electrogram 
                       annotations. Then calculates the mean of this set of 
                       activation times.

**Author**  Steven Williams (2019) (Copyright)

---


## getLowVoltageArea

 GETLOWVOLTAGEAREA Returns the low voltage area

 

#### Usage
```m
[lowVArea, voltages, iTri, tr2] = getLowVoltageArea( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**lowVArea**  
&nbsp;&nbsp;&nbsp;&nbsp;the low voltage area (cm^2)  

**voltages**  
&nbsp;&nbsp;&nbsp;&nbsp;the voltages point values used to calculate areas  

**iTri**  
&nbsp;&nbsp;&nbsp;&nbsp;indexes into userdata.surface.triRep.Triangulation and refers  
&nbsp;&nbsp;&nbsp;&nbsp;          to the triangles that have voltage values within the range,  
&nbsp;&nbsp;&nbsp;&nbsp;          threshld  

**tr2**  
&nbsp;&nbsp;&nbsp;&nbsp;a triangulation of all the triangles referenced in iTri.  

#### Parameter Value Pairs

**'method'    {'map'} \| 'egm'**  

**'type'      {'bip'} \| 'uni'**  

**'threshold' {[0.0 0.5]} \| array**  


#### Description
 GETLOWVOLTAGEAREA Returns the surface area of the chamber with voltage
 less than the specified threshold, 0.5mV by default. By default low
 voltage area is calculated using the surface data (stored in
 `userdata.surface`). If `method` is set to `egm` then the bipolar voltage is 
 first interpolated from the bipolar electrogram data (stored in
 `userdata.electric`). If `type` is set to `uni` then unipolar voltages are
 used for surface area calculation.

**Author**  Steven Williams (2020) (Copyright)

---


## getMappingPointsWithinMesh

 GETMAPPINGPOINTSWITHINMESH Returns the indices of the mapping points
 which are located internal to the mesh

 

#### Usage
```m
iPoint = getMappingPointsWithinMesh( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**iPoint**  
&nbsp;&nbsp;&nbsp;&nbsp;logical array list of valid points; indexes into userdata.electric  

#### Parameter Value Pairs

**'tol' 0.1 \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The distance threshold within which points are considered to be  
&nbsp;&nbsp;&nbsp;&nbsp;internal or external to the triangulation  

**'plot'     {false}\|true**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specify whether to plot the results  


#### Description
 GETMAPPINGPOINTSWITHINMESH Returns the indices of the mapping points
 which are located internal to the mesh. The OpenEP function pointStatus.m
 is used to identify these points. The parameter value pairs are passed
 directly onto pointStatus.m

**Author**  Steven Williams (2020) (Copyright)

---


## getMappingPointsWithinWoI

 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with
 annotated local activation time within the window of interest

 

#### Usage
```m
iPoint = getMappingPointsWithinWoI( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**iPoint**  
&nbsp;&nbsp;&nbsp;&nbsp;logicla array list of valid points; indexes into userdata.electric  


#### Description
 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with
 annotated local activation time within the window of interest

**Author**  Steven Williams (2020) (Copyright)

---


## getMeanVoltage

 GETMEANVOLTAGE Returns the mean voltage

 

#### Usage
```m
meanVoltage = getMeanVoltage( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**meanVoltage**  
&nbsp;&nbsp;&nbsp;&nbsp;the mean chamber voltage (mV)  

#### Parameter Value Pairs

**'method'    {'map'} \| 'egm'**  

**'type'      {'bip'} \| 'uni'**  


#### Description
 GETMEANVOLTAGE Returns the mean voltage of a chamber. By default, the
 mean bipolar voltage is calculated using the interpolated mapping data
 from the clinical mapping system (stored in userdata.surface.act_bip). If
 'method' is set to 'egm' then the bipolar voltage is first interpolated 
 from the bipolar electrogram data (stored in userdata.electric). If 
 'type' is set to 'uni' then unipolar voltages are returned.

**Author**  Steven Williams (2020) (Copyright)

---


## getMesh

 GETMESH Returns the triangulation-based mesh from userdata

 

#### Usage
```m
tr = getMesh(userdata)
```

#### Parameters

**tr**  
&nbsp;&nbsp;&nbsp;&nbsp;a TriRep, or Triangulation, object  

#### Parameter Value Pairs

**'type'     {'trirep'}\|'triangulation'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies whether to return the mesh as a TriRep object or as a  
&nbsp;&nbsp;&nbsp;&nbsp;Triangulation object  


#### Description
 GETMESH Returns a face/vertex representation of the anatomical model. 
 Supported data types include istances of the Matlab objects Trirep and 
 Triangulation.

**Author**  Steven Williams (2020) (Copyright)

---


## getNumPts

 GETNUMPTS Returns the number of mapping points in the OpenEP dataset

 

#### Usage
```m
numpts = getNumPts( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**numpts**  
&nbsp;&nbsp;&nbsp;&nbsp;the number of mapping points  


#### Description
 GETNUMPTS Returns the number of mapping points in the OpenEP datasest

**Author**  Steven Williams (2020) (Copyright)

---


## getPointImpedanceValue

 GETPOINTIMPEDANCEVALUE Provides an algorithm for giving point impedance
 values

 

#### Usage
```m
h = myfunction(b)
```

#### Parameters

**a**  
&nbsp;&nbsp;&nbsp;&nbsp;is the output  

**imp**  
&nbsp;&nbsp;&nbsp;&nbsp;impedance values at times tim  


#### Description
 Impedance values are streaming every 100ms to Carto 3 system from the 
 RF Generator. A time range of -7.5s to +2.5s is output for each point and
 saved in `userdata.electric.impedances` (`.time` and `.value`) in the mat
 files.

**Author**  Steven Williams (2014) (Copyright)

---


## getReferenceAnnotation

 GETREFERENCEANNOTATION Returns the value of the reference annotation 

 

#### Usage
```m
ref = getReferenceAnnotation( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**ref**  
&nbsp;&nbsp;&nbsp;&nbsp;the value of the reference annotation  

#### Parameter Value Pairs

**'iegm'    {:} \| integer \| array**  
&nbsp;&nbsp;&nbsp;&nbsp;- The electrogram point(s) for which the reference annotation is  
&nbsp;&nbsp;&nbsp;&nbsp;required  


#### Description
 GETREFERENCEANNOTATION Returns the value fo the reference annotation.

**Author**  Steven Williams (2020) (Copyright)

---


## getSurfaceData

 GETSURFACEDATA Returns surface mapping data from userdata

 

#### Usage
```m
data = getSurfaceData( userdata, datatype )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**datatype**  
&nbsp;&nbsp;&nbsp;&nbsp;the required data. Must be one of:  
&nbsp;&nbsp;&nbsp;&nbsp;       'act', 'bip', 'uni', 'imp', 'frc'  

**data**  
&nbsp;&nbsp;&nbsp;&nbsp;The returned surface mapping data  


#### Description
 GETSURFACEDATA Returns surface mapping data from userdata. Data type is
 specified by the `datatype` argument:
   `act` - activation time
   `bip` - bipolar voltage
   `uni` - unipolar voltage
   `imp` - impedance
   `frc` - contact force

**Author**  Steven Williams (2020) (Copyright)

---


## getTotalActivationTime

 GETTOTALACTIVATIONTIME Returns the total activation time of the chamber

 

#### Usage
```m
tat = getTotalActivationTime( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**tat**  
&nbsp;&nbsp;&nbsp;&nbsp;the total activation time, in ms  

#### Parameter Value Pairs

**'method'    {'ptbased'} \| 'ptbasedprct' \| 'clinmap' \| 'clinmapprct' \| 'openepmap' \| 'openmapprct'**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specifies the method by which total activation time is calculated  

**'prct'   {2.5} \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The percentile to use for percentile mapping; only applicable if  
&nbsp;&nbsp;&nbsp;&nbsp;`method` is one of `ptbasedprct`, `clinmapprct` or `openepmapprct`.  


#### Description
 GETTOTALACTIVATIONTIME Returns the total activatoin time of the chamber.
 Several alternative methods are provided, and specified by setting the
 'method' parameter-value pair to one of the following options:
       `ptbased`    - Calculates the difference in activation time between 
                       the earliest and latest activation time mapping 
                       points exported by the clinical system.
       `ptbasedprct`- First calculates the 0-2.5th percentile and 
                       the 97.5-100th percentile mapping times on the 
                       exported electrogram annotations, then calculates 
                       the difference between the means of these sets of 
                       activation times.
       `clinmap`    - Calculates the difference between the earliest and 
                       latest activation times on the local activation 
                       time map created by the clinical mapping system
       `clinmapprct`- First calculates the 0-2.5th percentile and 
                       the 97.5-100th percentile mapping times on the 
                       clinical local activation time map, then calculates 
                       the difference between the means of these sets of 
                       activation times.
       `openepmap`  - Calculates the difference between the earliest and 
                       latest activation times on the local activation 
                       time map created by OpenEP from the exported 
                       electrogram annotations.
       `openepmapprct`- First calculates the 0-2.5th percentile and 
                       the 97.5-100th percentile mapping times on the local 
                       activation time map created by OpenEP from the 
                       exported electrogram annotations. Then calculates 
                       the difference between the means of these sets of 
                       activation times.

**Author**  Steven Williams (2020) (Copyright)

---


## getVertices

 GETVERTICES Returns the vertices referenced by userdata

 

#### Usage
```m
[vertices, vertsref] = getVertices( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**vertices**  
&nbsp;&nbsp;&nbsp;&nbsp;all the vertices  

**isVertUsed**  
&nbsp;&nbsp;&nbsp;&nbsp;whether the vertex is referenced by the triangulation  


#### Description
 GETVERTICES Returns the vertices referenced by userdata

**Author**  Steven Williams (2020) (Copyright)

---


## getVolume

 GETVOLUME Calculates the volume of the chamber described in userdata

 

#### Usage
```m
volume = getVolume(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**volume**  
&nbsp;&nbsp;&nbsp;&nbsp;the volume, in cm^3  


#### Description
 GETVOLUME For details of the calculation see:
   https://stackoverflow.com/questions/1406029/how-to-calculate-the-volume-of-a-3d-mesh-object-the-surface-of-which-is-made-up
   http://chenlab.ece.cornell.edu/Publication/Cha/icip01_Cha.pdf
   EFFICIENT FEATURE EXTRACTION FOR 2D/3D OBJECTS IN MESH REPRESENTATION

**Author**  Steven Williams (2017) (Copyright)

---


## getWindowOfInterest

 GETWINDOWOFINTERST Returns the window of interest 

 

#### Usage
```m
woi = getWindowOfInterest( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**woi**  
&nbsp;&nbsp;&nbsp;&nbsp;two-element array specifying the window of interest relative to  
&nbsp;&nbsp;&nbsp;&nbsp;          the reference annotation  

#### Parameter Value Pairs

**'iEgm'    {:} \| integer \| array**  
&nbsp;&nbsp;&nbsp;&nbsp;- The electrogram point(s) for which the window of interst is required  


#### Description


**Author**  Steven Williams (2020) (Copyright)

---


## getpointelectrogramname

 GETPOINTELECTROGRAMNAME finds the electrode at xyz.
 

#### Usage
```m
[ electrogramname_bip, electrogramname_uni ] = getpointelectrogramname( point_xyz, pointFileName )
```

#### Parameters

**point_xyz**  
&nbsp;&nbsp;&nbsp;&nbsp;co-ordinates  

**pointFileName**  
&nbsp;&nbsp;&nbsp;&nbsp;filename  

**electrogramname_bip**  
&nbsp;&nbsp;&nbsp;&nbsp;the electrode name for the bipolar electrogram at point_xyz  

**electrogramname_uni**  
&nbsp;&nbsp;&nbsp;&nbsp;cell array of the electrode names for the  
&nbsp;&nbsp;&nbsp;&nbsp;       unipolar electrogram at point_xyz and it's associated second electrode  
&nbsp;&nbsp;&nbsp;&nbsp;       that makes up electrogramname_bip  

**point_xyz_2**  
&nbsp;&nbsp;&nbsp;&nbsp;the electrode position corresponding to the second electrode  
&nbsp;&nbsp;&nbsp;&nbsp;       that makes up the bipole at point_xyz (needed for locating unipolar  
&nbsp;&nbsp;&nbsp;&nbsp;       electrograms)  


#### Description
 GETPOINTELECTROGRAMNAME Detailed description

**Author**  Nick Linton (2012) (Copyright)

---


## getpointelectrogramname

 GETELCTRODENAME finds the electrode at xyz.

 

#### Usage
```m
[ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )
```

#### Parameters

**point_xyz**  
&nbsp;&nbsp;&nbsp;&nbsp;co-ordinates  

**pointFileName**  
&nbsp;&nbsp;&nbsp;&nbsp;filename  

**electrogramname_bip**  
&nbsp;&nbsp;&nbsp;&nbsp;the electrode name for the bipolar electrogram at point_xyz  

**electrogramname_uni**  
&nbsp;&nbsp;&nbsp;&nbsp;cell array of the electrode names for the  
&nbsp;&nbsp;&nbsp;&nbsp;       unipolar electrogram at point_xyz and it's associated second electrode  
&nbsp;&nbsp;&nbsp;&nbsp;       that makes up electrogramname_bip  

**point_xyz_2**  
&nbsp;&nbsp;&nbsp;&nbsp;the electrode position corresponding to the second electrode  
&nbsp;&nbsp;&nbsp;&nbsp;       that makes up the bipole at point_xyz (needed for locating unipolar  
&nbsp;&nbsp;&nbsp;&nbsp;       electrograms)  


#### Description
 GETELCTRODENAME Detailed description

**Author**  Nick Linton (2012) (Copyright)

---


## importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

#### Usage
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   dirName is the directory with all of the files corresponding to a map  
&nbsp;&nbsp;&nbsp;&nbsp;   userdata is a single data structure  
&nbsp;&nbsp;&nbsp;&nbsp;   matFileFullPath is the path to the .mat file, if opened or saved  


#### Description
 IMPORTCARTO can load data in 3 ways:
   1) USERINPUT is a .zip file - the zip file will be unzipped into a
   temporary file (deleted at the end). The data is packed into userdata
   and the user is incouraged to save this for the future (long time take
   to unzip).
   2) USERINPUT is a .mat file containing userdata
   3) USERINPUT is a .xml file - this must be the xml file in a folder
   containing all the other Carto3 files.

**Author**  Nick Linton (2011) (Copyright)

---


## importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

#### Usage
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   dirName is the directory with all of the files corresponding to a map  
&nbsp;&nbsp;&nbsp;&nbsp;   userdata is a single data structure  
&nbsp;&nbsp;&nbsp;&nbsp;   matFileFullPath is the path to the .mat file, if opened or saved  

#### Parameter Value Pairs

**'maptoread'     {''} \| string \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;Specifies which map to read. Can be a string referring  
&nbsp;&nbsp;&nbsp;&nbsp;to the map name or a double referring to the number of points in the  
&nbsp;&nbsp;&nbsp;&nbsp;map. If there are multiple maps with the same number of points an error  
&nbsp;&nbsp;&nbsp;&nbsp;will be thrown.  

**'refchannel'    {''} \| string**  
&nbsp;&nbsp;&nbsp;&nbsp;The name of the channel to pick as the refence channel. Typically  
&nbsp;&nbsp;&nbsp;&nbsp;this is the pacing channel for the map. Specify a string such as  

**'CS9-CS10'.**  

**'ecgchannel'    {''} \| string**  
&nbsp;&nbsp;&nbsp;&nbsp;The name of the channel to pick as the ECG channel. Typically  
&nbsp;&nbsp;&nbsp;&nbsp;this is an informative ECG such as V1. Specify a string such as 'V1'.  

**'savefilename'       {''} \| string**  
&nbsp;&nbsp;&nbsp;&nbsp;The full path to the location in which to save the output.  

**'verbose'       {true} \| false**  
&nbsp;&nbsp;&nbsp;&nbsp;Not yet implemented  
&nbsp;&nbsp;&nbsp;&nbsp;userdata structure ...  
&nbsp;&nbsp;&nbsp;&nbsp;.surface  
&nbsp;&nbsp;&nbsp;&nbsp;.triRep         - TriRep object for the surface  
&nbsp;&nbsp;&nbsp;&nbsp;.isVertexAtRim  - logical array indicating vertices at a 'rim'  
&nbsp;&nbsp;&nbsp;&nbsp;.act_bip        - nVertices*2 array of activation and voltage data  
&nbsp;&nbsp;&nbsp;&nbsp;.uni_imp_frc    - nVertices*3 array of uni voltage, impedance and contact force  
&nbsp;&nbsp;&nbsp;&nbsp;.electric  
&nbsp;&nbsp;&nbsp;&nbsp;.isPointLocationOnly    - logical array  
&nbsp;&nbsp;&nbsp;&nbsp;.tags  
&nbsp;&nbsp;&nbsp;&nbsp;.names  
&nbsp;&nbsp;&nbsp;&nbsp;.egmX           - location of point  
&nbsp;&nbsp;&nbsp;&nbsp;.egmSurfX       - location of surface nearest point  
&nbsp;&nbsp;&nbsp;&nbsp;.barDirection   - normal to surface at egmSurfX  
&nbsp;&nbsp;&nbsp;&nbsp;.egm            - bipolar electrogram  
&nbsp;&nbsp;&nbsp;&nbsp;.egmUni         - matrix of unipolar electrograms  
&nbsp;&nbsp;&nbsp;&nbsp;.egmUniX        - location of unipolar points  
&nbsp;&nbsp;&nbsp;&nbsp;.egmRefNames    - names of egmRef  
&nbsp;&nbsp;&nbsp;&nbsp;.egmRef         - electrogram of reference  
&nbsp;&nbsp;&nbsp;&nbsp;.ecgNames       - ecg names (or other channel names)  
&nbsp;&nbsp;&nbsp;&nbsp;.ecg            - ecg  
&nbsp;&nbsp;&nbsp;&nbsp;.force  
&nbsp;&nbsp;&nbsp;&nbsp;.force    - instantaneous force recording  
&nbsp;&nbsp;&nbsp;&nbsp;.axialAngle    - axial angle  
&nbsp;&nbsp;&nbsp;&nbsp;.lateralAngle  - lateral angle  
&nbsp;&nbsp;&nbsp;&nbsp;.time_force - time course of force [(:,:,1)=time, (:,:,2)=force]  
&nbsp;&nbsp;&nbsp;&nbsp;.time_axial - time course of axial angle [(:,:,1)=time, (:,:,2)=axial angle]  
&nbsp;&nbsp;&nbsp;&nbsp;.time_lateral - time course of lateral angle [(:,:,1)=time, (:,:,2)=lateral angle]  


#### Description


**Author**  Nick Linton (2011) (Copyright)

---


## importvisitag

 IMPORTVISITAG provides a data structure from Carto visitag files.

 

#### Usage
```m
visitag = importvisitag(userdata, dirName)
visitag = imporvisitag()
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;  

**dirName**  
&nbsp;&nbsp;&nbsp;&nbsp;the directory with all of the files corresponding to WiseTag  

**visitag**  
&nbsp;&nbsp;&nbsp;&nbsp;a single data structure  
&nbsp;&nbsp;&nbsp;&nbsp;  
&nbsp;&nbsp;&nbsp;&nbsp; IMPORTVISITAG parses the data contained in a Visitag export from the  
&nbsp;&nbsp;&nbsp;&nbsp; Carto3 mapping system. The data is stored in a field `.rfindex` and the  
&nbsp;&nbsp;&nbsp;&nbsp; new userdata data structure with the appended ablation data is returned.  
&nbsp;&nbsp;&nbsp;&nbsp;  


#### Description


**Author**  Steven Williams (2020) (Copyright)

---


## importvisitag

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


#### Usage
```m

```

#### Parameters


#### Description


**Author**  Steven Williams (2014) (Copyright)

---


## openEP2VTK

 OPENEP2VTK Converts an OpenEP data structure to a VTK file

 

#### Usage
```m
tr = openEP2VTK('openfile')
```

#### Parameters

**tr**  
&nbsp;&nbsp;&nbsp;&nbsp;a TriRep object  

**path2VTKfile**  
&nbsp;&nbsp;&nbsp;&nbsp;the path to the file that was written  

#### Parameter Value Pairs

**'datatype'     {'bip'} \| 'uni' \| 'lat'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the required data, bipolar voltage, unipolar voltage or local  
&nbsp;&nbsp;&nbsp;&nbsp;activation time  

**'method'       {'map'} \| 'egm'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the method of accessing the data; clinical-system map based  
&nbsp;&nbsp;&nbsp;&nbsp;('map') or re-inteprolated by OpenEP from the raw egms ('egm');  

**'outputfile'**  
&nbsp;&nbsp;&nbsp;&nbsp;- absolute path to the output file.  
&nbsp;&nbsp;&nbsp;&nbsp;If empty then openEP2VTK outputs the VTK file to the current  
&nbsp;&nbsp;&nbsp;&nbsp;directory using the current date/time as the filename  
&nbsp;&nbsp;&nbsp;&nbsp;If strcmpi('outputfile','openfile') a GUI is used to place the  
&nbsp;&nbsp;&nbsp;&nbsp;file  


#### Description
 OPENEP2VTK Converts between OpenEP format and VTK format. This
 function takes map data and writes it to the VTK file, or if 'method' is
 set to 'egm' it first uses generateInterpData.m to create interpolated
 data.

**Author**  Steven Williams (2020) (Copyright)

---


## plotAblationArea

 PLOTABLATIONAREA Adds the ablation area to the current figure

 

#### Usage
```m
plotAblationArea(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem.m  


#### Description
 PLOTABLATIONAREA Requires a userdata structure which contains `.rfindex` as
 its input, which can be created using `importvisitag.m`

**Author**  Steven Williams (2020) (Copyright)

---


## plotElectrograms

 PLOTELECTROGRAMS Draws any number of electrograms in line.

 

#### Usage
```m
hFig = PLOTELECTROGRAMS(egmTraces)
hFig = PLOTELECTROGRAMS(egmTraces, varargin)
```

#### Parameters

**egmTraces**  
&nbsp;&nbsp;&nbsp;&nbsp;the electrograms to plot  

**hFig**  
&nbsp;&nbsp;&nbsp;&nbsp;a handle to the plotted figure  

#### Parameter Value Pairs

**'egmNames'**  
&nbsp;&nbsp;&nbsp;&nbsp;- cell array of electrogram names  

**'range'**  
&nbsp;&nbsp;&nbsp;&nbsp;- two value vector [xmin xmax]  

**'sampleRate'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the sample rate in Hz  

**'paperSpeed'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the paper speed for plotting  

**'separation'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the separation between electrograms, default is 5mV  

**'clipping'**  
&nbsp;&nbsp;&nbsp;&nbsp;- two value vector [clipmin clipmax] in mV  

**'gain'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the gain, default is 2  

**'autogain'**  
&nbsp;&nbsp;&nbsp;&nbsp;- if true the electrograms are automatically scaled, default false  

**'acttime'**  
&nbsp;&nbsp;&nbsp;&nbsp;- a vector of activation times to be plotted as red crosses  

**'egmColors'**  
&nbsp;&nbsp;&nbsp;&nbsp;- cell array of colors. Same size as egmNames  

**'linewidth'**  
&nbsp;&nbsp;&nbsp;&nbsp;- the width of the lines drawing the electrograms  


#### Description
 PLOTELECTROGRAMS is used to plot electrograms. To plot an A4 electrogram
 page: 1. Save figure as an .EPS file; 2. Open in Corel draw (or similar) 
 and export as a .PDF file. INSTRUCTIONS FOR TIMING SINGLE BEAT TRACES
 The default position gives a width of 300pixels, which corresponds to an
 x axis width of 68.44mm. The number of samples to plot in this
 width (ie width of 'range' parameter) is given by:
   n = (sampleRate / paperSpeed) * 68.44
 For example, at 1000Hz range should be specified as having width:
   25mm/s  - 2738  [-1119 1619]
   100mm/s - 684
   200mm/s - 342

**Author**  Steven Williams (2012) (Copyright)

---


## plotOpenEPEgms

 PLOTOPENEPEGMS Plot eletrograms from OpenEP data

 

#### Usage
```m
[ hFig ] = plotOpenEPEgms( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**hFig**  
&nbsp;&nbsp;&nbsp;&nbsp;a handle to the plotted figure  

#### Parameter Value Pairs

**'iEgm'     {:} \| [a:b]**  
&nbsp;&nbsp;&nbsp;&nbsp;an array indexing into userdata.electric.egm such that  
&nbsp;&nbsp;&nbsp;&nbsp;userdata.electric.egm(iEgmArray,:) are selected for plotting  
&nbsp;&nbsp;&nbsp;&nbsp;To convert from Carto point numbers to iEgmArray use  
&nbsp;&nbsp;&nbsp;&nbsp;getIndexFromCartoPointNumber.  

**'range'         {'window'} \| 'all'**  
&nbsp;&nbsp;&nbsp;&nbsp;By default ('window') only the electrogram within the window of  
&nbsp;&nbsp;&nbsp;&nbsp;interest is drawn (+/-buffer). By specifying 'all' the entire point  
&nbsp;&nbsp;&nbsp;&nbsp;electrogram is drawn.  

**'buffer'        {50} \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;The time before and after the window of interest to draw. By  
&nbsp;&nbsp;&nbsp;&nbsp;default, 20ms, but can be changed by setting 'buffer' to an  
&nbsp;&nbsp;&nbsp;&nbsp;alternative value.  

**'egmtype'   'bip' \| 'uni' \| {'bip-uni'}**  
&nbsp;&nbsp;&nbsp;&nbsp;Whether to plot only the bipolar electrograms, only the  
&nbsp;&nbsp;&nbsp;&nbsp;unipolar electrograms or both  

**'reference' 'off' \| {'on'}**  
&nbsp;&nbsp;&nbsp;&nbsp;Whether to plot the reference channel, off by default  
&nbsp;&nbsp;&nbsp;&nbsp;userdata.electric.egm(iEgmArray,:) are selected for plotting.  
&nbsp;&nbsp;&nbsp;&nbsp;To convert from Carto point numbers to iEgmArray use  
&nbsp;&nbsp;&nbsp;&nbsp;`getIndexFromCartoPointNumber.m`  

**'linewidth', {1} \| integer**  
&nbsp;&nbsp;&nbsp;&nbsp;The width of the lines drawing the electrograms  


#### Description
 PLOTOPENEPEGMS is a wrapper function for plotElectrograms.

**Author**  Steven Williams (2017) (Copyright)

---


## plotTag

 PLOTTAG Plots tag(s) on the current map

 

#### Usage
```m
h = plotTag( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**h(i)**  
&nbsp;&nbsp;&nbsp;&nbsp;is an array of handles referencing the plotted surfaces  

#### Parameter Value Pairs

**'coord'     {[x y x]}**  
&nbsp;&nbsp;&nbsp;&nbsp;- A set of x,y,z coords where size(coords) = nx3 where n is the  
&nbsp;&nbsp;&nbsp;&nbsp;number of tags to plot  

**'pointnum'  [p1, p2, ... pn]**  
&nbsp;&nbsp;&nbsp;&nbsp;- An array of size nx1 where n is the number of tags to plot  

**'color'     {'r'}\|'g'\|'b'\|'p'\|'o'\|'y'**  
&nbsp;&nbsp;&nbsp;&nbsp;- The color of the tag to draw  

**'size'**  
&nbsp;&nbsp;&nbsp;&nbsp;- The size of the tag to draw  


#### Description
 PLOTTAG Plots tag(s) on the current map

**Author**  Steven Williams (2020) (Copyright)

---


## plotVisitags

 PLOTVISITAGS Displays ablation data for a case

 

#### Usage
```m
plotVisitags(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem.m  

#### Parameter Value Pairs

**'plot'     {'tags'} \| 'grid' \| 'both'**  
&nbsp;&nbsp;&nbsp;&nbsp;- specifies whether to show the tags, the grid, or both  

**'shell'    {'on'} \| 'off'**  
&nbsp;&nbsp;&nbsp;&nbsp;- specifies whether to show the chamber shell  

**'colour'    {'r'} \| colorspec \| array**  
&nbsp;&nbsp;&nbsp;&nbsp;- can be a string or colorspec specifying the color of all the  
&nbsp;&nbsp;&nbsp;&nbsp;spheres  
&nbsp;&nbsp;&nbsp;&nbsp;- can be an array of double values which is rendered as a  
&nbsp;&nbsp;&nbsp;&nbsp;colorscale  

**'orientation'**  
&nbsp;&nbsp;&nbsp;&nbsp;- see `drawMap.m`  


#### Description
 PLOTVISITAG Requires a userdata structure which contains .rfindex as
 its input, which can be created using importvisitag.m

**Author**  Steven Williams (2020) (Copyright)

---


## pointStatus

 POINTSTATUS Returns the status of points relevant to userdata

 

#### Usage
```m
[inoutpts, meshpts] = pointStatus( userdata )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**inoutpts**  
&nbsp;&nbsp;&nbsp;&nbsp;whether points are internal (logical(1)) or external  
&nbsp;&nbsp;&nbsp;&nbsp;               (logical(0)) to the triangulation in userdata  

**meshpts**  
&nbsp;&nbsp;&nbsp;&nbsp;whether points in the triangulation in userdata are  
&nbsp;&nbsp;&nbsp;&nbsp;               referenced in the triangulation (logical(1)) or not  
&nbsp;&nbsp;&nbsp;&nbsp;               (logical(0))  

#### Parameter Value Pairs

**'tol' 0.1 \| double**  
&nbsp;&nbsp;&nbsp;&nbsp;- The distance threshold within which points are considered to be  
&nbsp;&nbsp;&nbsp;&nbsp;internal or external to the triangulation  

**'plot'     {false}\|true**  
&nbsp;&nbsp;&nbsp;&nbsp;- Specify whether to plot the results  


#### Description
 POINTSTATUS depends on the package INPOLYHEDRON. See:
   https://uk.mathworks.com/matlabcentral/fileexchange/37856-inpolyhedron-are-points-inside-a-triangulated-volume

**Author**  Steven Williams (2020) (Copyright)

---


## processSmartTouchForceData

 PROCESSSMARTTOUCHFORCEDATA Gets a shell with force data
 

#### Usage
```m
[tr f] = processSmartTouchForceData(userdata)
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;is a Carto dataset  

**f**  
&nbsp;&nbsp;&nbsp;&nbsp;are the 1000ms window forces  

**loc**  
&nbsp;&nbsp;&nbsp;&nbsp;are the coordinates of the data in f (size: length(f) * 3)   


#### Description
 PROCESSSMARTTOUCHFORCEDATA parses the force data at ablation points from
 userdata.

**Author**  Steven Williams (2013) (Copyright)

---


## read_ecgfile_v4

 READ_ECGFILE loads this Carto3 ecg file.
 

#### Usage
```m
channelNames = read_ecgfile(filename);
[channelNames channelVoltages] = read_ecgfile(filename)
channelVoltages = read_ecgfile(filename, names)
```

#### Parameters

**channelVoltages**  
&nbsp;&nbsp;&nbsp;&nbsp;voltages  

**channelNames**  
&nbsp;&nbsp;&nbsp;&nbsp;names  

**filename**  
&nbsp;&nbsp;&nbsp;&nbsp;the Carto3 .txt file  

**names**  
&nbsp;&nbsp;&nbsp;&nbsp;is optional and is the desired channel names which helps speed  


#### Description


**Author**  Nick Linton (2013) (Copyright)

---


## read_ecgfile_v4_header

 READ_ECGFILE_V4_HEADER loads the header from an ECG file.
 

#### Usage
```m
[electrodename_bip] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni electrodename_ref] = read_ecgfile_v4_header(varargin)
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   electrodename_bip   is the name of the electrode pair collecting the bipolar mapping point  
&nbsp;&nbsp;&nbsp;&nbsp;   electrodename_uni   is the name of the electrode collecting the unipolar mapping point  
&nbsp;&nbsp;&nbsp;&nbsp;   electrodename_ref   is the name of the reference electrode for the mapping point  


#### Description


**Author**  Steven Williams (2020) (Copyright)

---


## read_forcefile_v2

 READ_FORCEFILE loads this Carto3 force file.
 

#### Usage
```m
force = read_forcefile(filename);
[force axialAngle lateralAngle] = read_forcefile(filename)
[force axialAngle lateralAngle t_time t_force t_axialAngle t_lateralAngle] = read_forcefile(filename)
```

#### Parameters

**force**  
&nbsp;&nbsp;&nbsp;&nbsp;is the fixed time point force for this point  

**axialAngle**  
&nbsp;&nbsp;&nbsp;&nbsp;is the fixed time point axial angle for this point  

**lateralAngle**  
&nbsp;&nbsp;&nbsp;&nbsp;is the fixed time point lateral angle for this point  

**t_time**  
&nbsp;&nbsp;&nbsp;&nbsp;is the time array (e.g. -7000ms->5000ms) for the time data  

**t_force**  
&nbsp;&nbsp;&nbsp;&nbsp;is the time course of force  

**t_axialAngle**  
&nbsp;&nbsp;&nbsp;&nbsp;is the time course of the axial angle  

**t_lateralAngle**  
&nbsp;&nbsp;&nbsp;&nbsp;is the time course of the lateral angle  


#### Description
   filename is the Carto3.txt file

**Author**  Steven Williams (2013) (Copyright)

---


## read_meshfile

 READ_MESHFILE loads this Carto3 mesh file.
 

#### Usage
```m
t = read_meshfile(filename)
[t isVertexAtEdge] = read_meshfile(filename)
[t isVertexAtEdge act_bip normals] = read_meshfile(filename)
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   filename is the filename  
&nbsp;&nbsp;&nbsp;&nbsp;   t is a TriRep object  
&nbsp;&nbsp;&nbsp;&nbsp;   isVertexAtEdge is a logical array indicating vertices at an edge  
&nbsp;&nbsp;&nbsp;&nbsp;   act_bip is a matrix of activation times and bipolar voltage by vertex  


#### Description
 READ_MESHFILE reads the triangulation from a TriangulatedMeshVersion 2.0
 file.

**Author**  Nick Linton (2011) (Copyright)

---


## read_positions_on_annotation_v2

 READ_POSITIONS_ON_ANNOTATION_V2 loads this Carto3 position file.
 

#### Usage
```m
[iElectrode xyz] = read_positions_on_annotation_v2(filename)
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   iElectrode is a vector of electrode numbers  
&nbsp;&nbsp;&nbsp;&nbsp;   xyz is an array of xyz positions  


#### Description


**Author**  Nick Linton (2013) (Copyright)

---


## read_visitag_file_v1

 READ_VISITAG_FILE_V1 Reads a data file stored in a WiseTag or VisiTag
 directory

 

#### Usage
```m
[ data, header ] = read_visitag_file_v1( filepath )
```

#### Parameters

**filepath**  
&nbsp;&nbsp;&nbsp;&nbsp;path to the file to be read  

**data**  
&nbsp;&nbsp;&nbsp;&nbsp;the the file data  

**header**  
&nbsp;&nbsp;&nbsp;&nbsp;the file header  


#### Description
 READ_VISITAG_FILE_V1 Reads numeric data from data files stored in WiseTag or
 VisiTag directories. These files all have a standard format - header line
 followed by data lines; tab delimited. The headers are returned in a cell
 array to allow search/indexing.

**Author**  Steven Williams (2020) (Copyright)

---


## read_visitag_sites

 READ_VISITAG_SITES loads Carto3 visitag sites.txt file.
 

#### Usage
```m
[sites] = read_visitag_sites(filename)
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   data is a matrix of all the data from the file  
&nbsp;&nbsp;&nbsp;&nbsp;   labels is a cell array of the header lines from the file  
&nbsp;&nbsp;&nbsp;&nbsp;   filename is the full file path  


#### Description
 READ_VISITAG_SITES detailed description goes here

**Author**  Steven Williams (2015) (Copyright)

---


## read_visitagsettings

 READ_VISITAGSETTINGS loads Carto3 visitag settings file.
 

#### Usage
```m
[visitagSettings] = read_visitagsettings(filename)
```

#### Parameters
&nbsp;&nbsp;&nbsp;&nbsp;   visitagSettings is a structure of the visitag settings  
&nbsp;&nbsp;&nbsp;&nbsp;   filename is the full file path  


#### Description
 READ_VISITAGSETTINGS creates a structure with the parameters in
 VisiTagSettings.txt. Data is converted to double if it is numeric or
 remains as a string if it is a string. Beware of equals sign at the end
 of the parameter names - these are currently removed by the code but
 would be an obvious source of future errors.

**Author**  Steven Williams (2015) (Copyright)

---


## voltageHistogramAnalysis

 VOLTAGEHISTOGRAMANALYSIS Performs voltage histogram analysis

 

#### Usage
```m
areas = voltageHistogramAnalysis( userdata, varargin )
```

#### Parameters

**userdata**  
&nbsp;&nbsp;&nbsp;&nbsp;see importcarto_mem  

**areas**  
&nbsp;&nbsp;&nbsp;&nbsp;he chamber areas within each of the voltage thresholds  

#### Parameter Value Pairs

**'method'    {'map'}\|'egm'**  

**'type'      {'bip'}\|'uni'**  

**'threshold' n x 2 matrix of threshold values, default:**  
&nbsp;&nbsp;&nbsp;&nbsp;[ 0.01 0.11; 0.11 0.21; 0.21 0.30; 0.30 0.40; 0.40 0.50 ]  

**'plot'      {false} \| true**  

**'colors'      {colorBrewer colors r, y, g, b, p}\|**  


#### Description
 VOLTAGEHISTOGRAMANALYSIS displays a histogram of voltages coloured according
 to voltages, threshold. If 'method' is set to 'egm' then the bipolar 
 voltage is first interpolated from the bipolar electrogram data (stored 
 in userdata.electric). If 'type' is set to 'uni' then unipolar voltages 
 are used.

**Author**  Steven Williams (2020) (Copyright)

---