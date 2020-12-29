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
</style>





<a name=" cartoMesh2VTK" />
##  cartoMesh2VTK

 CARTOMESH2VTK Converts a Carto mesh file to VTK file

 

#### Usage
```m
tr = cartoMesh2VTK('openfile')
```

#### Parameters

**tr,**
a TriRep object


#### Description
 CARTOMESH2VTK Converts a Carto3 mesh to a VTK file and returns a TriRep
 object

**Author**  Steven Williams (2015) (Copyright)

---


<a name=" cvHistogram" />
##  cvHistogram

 CVHISTOGRAM Draws a conduction velocity histogram

 

#### Usage
```m
cvHistogram( userdata )
```

#### Parameters

**userdata**
see importcarto_mem


#### Description
 CVHISTOGRAM accepts the following parameter-value pairs
   'limits'    {[0 5]} | array
   'binwidth'  {0.1} | double

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" distanceBetweenPoints" />
##  distanceBetweenPoints

 DISTANCEBETWEENPOINTS Returns the distance from A to B.
 

#### Usage
```m
distance = distanceBetweenPoints(userdata, A, B)
```

#### Parameters

**userdata**
see importcarto_mem

**P1**
is the first point

**P2**
is the second point


#### Description
 DISTBETWEENPOINTS accepts the following parameter-value pairs
   'method'    {'linear'} | 'geodesic'
       - Specifies whether to calcualte linear or geodesic distances
   'plot'      {false} | true
       - Specifies whether to draw a figure

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" drawMap" />
##  drawMap

 DRAWMAP plots an OpenEP map
 

#### Usage
```m
hSurf = drawMap(userdata)
hSurf = drawMap(userdata, varargin);
```

#### Parameters

**hSurf**
is a handle to the surface

**userdata**
is a Carto data structure


#### Description
 DRAWMAP is a wrapper function for colorShell.m which allows OpenEP data 
 to be plotted. DRAWMAP accepts the following parameter-value pairs:
   'data' {[]} | [d]
       - Where d is a vector of data values and size(d) equals numel(userdata.surface.triRep.X)
   'type'  {'act'} | 'bip' | 'force' | 'uni' | 'none' | 'cv'
       - Specifies type of map - activation, bipolar or unipolar voltage
   'coloraxis' {[]} | [a b]
       - Where a and b are real numbers. See help colorShell
   'noLight' {false} | true
       - If set to true no additional light will be drawn. Useful if
       overlaying maps.
   'usrColorMap' {[]}|cMap
       - If set, this colormap will be used instead of the defaults
   colorbarlocation    'north' | 'south' | 'east' | 'west' | 'northoutside' |
                       'southoutside' | 'eastoutside' | {'westoutside'}
   'orientation' {'AP'} | 'PA'
       - Specifies the view as AP or PA. LAO, RAO, LL, RL yet to be
       defined
   'colorfillthreshold'   {10} | c
       - Where c is a scalar value; defaulting to 10mm

**Author**  Steven Williams (2016) (Copyright)

---


<a name=" editUserdata" />
##  editUserdata

 EDITUSERDATA Graphically remove regions from a Carto dataset

 

#### Usage
```m
userdata2 = editUserdata(userdata)
```

#### Parameters

**userdata**
is the original Carto dataset

**userdata2**
is the new Carto dataset with elements removed


#### Description
 EDITUSERDATA uses EDITTRIANGULATION to remove triangles from a TriRep
 object. Controls:
   Left click          - select triangles to remove
   Shift-Left click    - select triangles to keep
   Ctrl-Left click     - select area up to the boundary
   d                   - done

**Author**  Steven Williams (2016) (Copyright)

---


<a name=" fixVoltageAnnotations" />
##  fixVoltageAnnotations

 FIXVOLTAGEANNOTATIONS Fixes the uni/bip reversal identified in
 userdata.electric.voltages in August 2014. This function is not required
 for any userdata .mat files created after 27th August 2014.

 

#### Usage
```m
userdata = fixVoltageAnnotations(userdata)
```

#### Parameters

**userdata**
is the output

**userdata**
is the input, or 'openfile'


#### Description
 FIXVOLTAGEANNOTATIONS detailed description goes here.

**Author**  Steven Williams (2014) (Copyright)

---


<a name=" generateInterpData" />
##  generateInterpData

 GENERATEINTERPDATA Performs spatial interpolation of scalar data

 

#### Usage
```m
interpData = generateInterpData(userdata, datatype)
```

#### Parameters

**userdata**
see, importcarto_mem

**datatype**
the desired data type to return

**interpData**
is the interpolated data


#### Description
 GENERATEINTERPDATA accepts the following parameter-value pairs
   'interMethod'    'nearest'|'linear'|{'natural'}
       - The interpolation method, default to natural
   'exterMethod'    {nearest}|linear|none
       - The extrapolation method, defaults to linear
   'distanceThresh' {10}|double
       - The distance threshold, d, default 10mm
 
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


<a name=" getAblationArea" />
##  getAblationArea

 GETABLATIONAREA Calculates the area of a chamber which has been ablated

 

#### Usage
```m
[ablArea, isAblated, trAbl] = getAblationArea( userdata )
```

#### Parameters

**userdata**
see importcarto_mem.m

**ablArea**
the total area of the chamber that has been ablated

**isAblated**
indexes into userdata.surface.triRep.Triangulation and
               indicates whether a particular triangle is considered
               ablated (1) or not (0).

**trAbl**
a Triangulation of the ablated tissue


#### Description
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

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getAnatomicalStructures" />
##  getAnatomicalStructures

 GETANATOMICALSTRUCTURES Returns the free boundaries (anatomical 
 structures) described in userdata

 

#### Usage
```m
[FF, l, a, tr] = getAnatomicalStructures( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**FF**
see TriRep/freeBoundary, cell array

**l**
array of lengths (perimeters) of each anatomical structure

**a**
an array of areas of each anatomical structure

**tr**
cell array of triangulations of each anatomical structure


#### Description
 GETANATOMICALSTRUCTURES accepts the following parameter-value pairs
   'plot'     {false}|true

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getArea" />
##  getArea

 GETAREA Returns the surface area of an anatomical model

 

#### Usage
```m
area = getArea( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**area**
the surface area (cm^2)


#### Description
 GETAREA accepts the following parameter-value pairs
   'method'     {'nofill'}|'fill'

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getCentreOfMass" />
##  getCentreOfMass

 GETCENTREOFMASS Returns the centre of mass of the anatomical model 
 defined in userdata

 

#### Usage
```m
C = getCentreOfMass( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**C**
the Cartesian co-ordinates of the centre of mass


#### Description
 GETCENTREOFMASS accepts the following parameter-value pairs
   'plot'     {false}|true

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getClosedSurface" />
##  getClosedSurface

 GETCLOSEDSURFACE Fills all the holes in the userdata surface

 

#### Usage
```m
tr = getClosedSurface( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**tr**
a triRep object


#### Description
 GETCLOSEDSURFACE Returns a new surface representation of the anatomical 
 model with all the holes in the mesh filed. Closes the surface by the 
 following algorithm. First, every complete free boundary is identified. 
 Second, the barycentre of the free boundary is identified. Third, a 
 triangulation is created covering this hole. Finally, the additional 
 triangles are added to the TriRep.

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getConductionVelocity" />
##  getConductionVelocity

 GETCONDUCTIONVELOCITY Returns the conduction velocity map of the 
 chamber

 

#### Usage
```m
cvdata = getConductionVelocity( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**cvdata**
the conduction velocities, in m/s


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


<a name=" getEarliestActivationSite" />
##  getEarliestActivationSite

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
see importcarto_mem

**X**
the earliest activation site, in x,y,z format. For
                   map-based methods (i.e. 'clinmap', 'clinmapprct',
                   'openepmap'and 'openepmapprct'), X is identical to
                   surfX.

**surfX**
the surface projection of the eariest activation site

**iPoint**
the closest mapping point to the earliest activation
                   site. For point-based methods (i.e. 'ptbased' or 
                   'ptbasedprct'), iPoint indexes into userdata.electric.
                   For map-based methods (i.e. 'clinmap', 'clinmapprct',
                   'openepmap', 'openepmapprct'), iPoint indexes into
                   userdata.surface.triRep.X. For percentile methods (i.e.
                   'ptbasedprct', 'cinmapprct' or 'openepmapprct') iPoint
                   returns all the points that were identified within the
                   relevant percentile.

**t**
the calculated earliest activation time, relative to the
                   reference annotation


#### Description
 GETEARLIESTACTIVATIONSITE accepts the following parameter-value pairs
   'method'    {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'
       - Specifies the method by which the earliest activation is
           calculated.
   'prct'       {2.5} | double
       - The percentile to use for percentile mapping; only applicable if
       'method' is 'percentile'.

**Author**  Steven Williams (2019) (Copyright)

---


<a name=" getEgmsAtPoints" />
##  getEgmsAtPoints

 GETEGMSATPOINTS Access eletrograms from stored in the OpenEP data format

 

#### Usage
```m
[egmTraces, acttime, egmNames] = getEgmsAtPoints( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**egmTraces**
cell array of the requested electrograms

**acttime**
cell array of activation times 

**egmNames**
names of the electrograms


#### Description
 GETEGMSATPOINTS accepts the following parameter-value pairs
   'iEgm'     {:}|[a:b]
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

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getElectrogramDuration" />
##  getElectrogramDuration

 GETELECTROGRAMDURATION Returns the electrogram durations

 

#### Usage
```m
egmDuration = getElectrogramDuration( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**egmDuration**
the duration of activation for each electrogram


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


<a name=" getFaces" />
##  getFaces

 GETFACES Returns the faces referenced by userdata

 

#### Usage
```m
faces = getFaces( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**faces**
all the faces


#### Description
 GETFACES Returns the faces referenced by userdata

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getImpedanceValues" />
##  getImpedanceValues

 GETIMPEDANCEVALUE Returns the impedance value of given point(s)

 

#### Usage
```m
imp = getImpedanceValue( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**imp**
the impedance values (Ohms)


#### Description
 GETIMPEDANCEVALUES accepts the following parameter-value pairs
   'method'    {'map'} | 'egm'
   'points'     {':'} | int array
   'vertices'  {':'} | int array

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getIndexFromCartoPointNumber" />
##  getIndexFromCartoPointNumber

 GETINDEXFROMCARTOPOINTNUMBER Finds the index of the mapping point at the 
 point number displayed on the Carto mapping system.

 

#### Usage
```m
[index] = getIndexFromCartoPointNumber(pointNumber)
```

#### Parameters

**userdata**
a userdata structure

**pointNumber**
a point number (or array of point numbers) as displayed
                 on the Carto mapping system

**index**
an index (or array of indices) for referencing into the
                 data fields within userdata.electric


#### Description
 GETINDEXFROMCARTOPOINTNUMBER Finds the index of the mapping point at the 
 point number displayed on the Carto mapping system.

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getLatestActivationSite" />
##  getLatestActivationSite

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
see importcarto_mem

**X**
Cartesian co-ordinates of the latest activation site. For
                   map-based methods (i.e. 'clinmap', 'clinmapprct',
                   'openepmap'and 'openepmapprct'), X is identical to
                   surfX.

**surfX**
The surface projection of the latest activation site

**iPoint**
The closest mapping point to the latest activation
                   site. For point-based methods (i.e. 'ptbased' or 
                   'ptbasedprct'), iPoint indexes into userdata.electric.
                   For map-based methods (i.e. 'clinmap', 'clinmapprct',
                   'openepmap', 'openepmapprct'), iPoint indexes into
                   userdata.surface.triRep.X. For percentile methods (i.e.
                   'ptbasedprct', 'clinmapprct' or 'openepmapprct') iPoint
                   returns all the points that were identified within the
                   relevant percentile.

**t**
The calculated latest activation time, relative to the
                   reference annotation


#### Description
 GETLATESTACTIVATIONSITE accepts the following parameter-value pairs
   'method'    {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'
       - Specifies the method by which the latest activation is 
           calculated.
   'prct'       {2.5} | double
       - The percentile to use for percentile mapping; only applicable if
       'method' is 'percentile'.

**Author**  Steven Williams (2019) (Copyright)

---


<a name=" getLowVoltageArea" />
##  getLowVoltageArea

 GETLOWVOLTAGEAREA Returns the low voltage area

 

#### Usage
```m
[lowVArea, voltages, iTri, tr2] = getLowVoltageArea( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**lowVArea**
the low voltage area (cm^2)

**voltages**
the voltages point values used to calculate areas

**iTri**
indexes into userdata.surface.triRep.Triangulation and refers
          to the triangles that have voltage values within the range,
          threshld

**tr2**
a triangulation of all the triangles referenced in iTri.


#### Description

 GETLOWVOLTAGEAREA accepts the following parameter-value pairs
   'method'    {'map'} | 'egm'
   'type'      {'bip'} | 'uni'
   'threshold' {[0.0 0.5]} | array

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getMappingPointsWithinWoI" />
##  getMappingPointsWithinWoI

 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with
 annotated local activation time within the window of interest

 

#### Usage
```m
iPoint = getMappingPointsWithinWoI( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**iPoint**
the list of valid points; indexes into userdata.electric


#### Description
 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with
 annotated local activation time within the window of interest

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getMeanVoltage" />
##  getMeanVoltage

 GETMEANVOLTAGE Returns the mean voltage

 

#### Usage
```m
meanVoltage = getMeanVoltage( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**meanVoltage**
the mean chamber voltage (mV)


#### Description
 GETMEANVOLTAGE accepts the following parameter-value pairs
   'method'    {'map'} | 'egm'
   'type'      {'bip'} | 'uni'

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getMesh" />
##  getMesh

 GETMESH Returns the triangulation-based mesh from userdata

 

#### Usage
```m
tr = getMesh(userdata)
```

#### Parameters

**tr**
a TriRep, or Triangulation, object


#### Description
 GETMESH accepts the following parameter-value pairs
   'type'     {'trirep'}|'triangulation'
       - Specifies whether to return the mesh as a TriRep object or as a
       Triangulation object

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getNumPts" />
##  getNumPts

 GETNUMPTS Returns the number of mapping points in the OpenEP dataset

 

#### Usage
```m
numpts = getNumPts( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**numpts**
the number of mapping points


#### Description
 GETNUMPTS Returns the number of mapping points in the OpenEP datasest

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getPointImpedanceValue" />
##  getPointImpedanceValue

 GETPOINTIMPEDANCEVALUE Provides an algorithm for giving point impedance
 values

 

#### Usage
```m
h = myfunction(b)
```

#### Parameters

**a**
is the output

**imp**
impedance values at times tim


#### Description
 Impedance values are streaming every 100ms to Carto 3 system from the 
 RF Generator. A time range of -7.5s to +2.5s is output for each point and
 saved in userdata.electric.impedances (.time and .value) in the mat
 files.

**Author**  Steven Williams (2014) (Copyright)

---


<a name=" getReferenceAnnotation" />
##  getReferenceAnnotation

 GETREFERENCEANNOTATION Returns the value of the reference annotation 

 

#### Usage
```m
ref = getReferenceAnnotation( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**ref**
the value of the reference annotation


#### Description
 GETREFERENCEANNOTATION Accepts the following parameter-value pairs.
   'iegm'    {:} | integer | array
        - The electrogram point(s) for which the reference annotation is
        required

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getSurfaceData" />
##  getSurfaceData

 GETSURFACEDATA Returns surface mapping data from userdata

 

#### Usage
```m
data = getSurfaceData( userdata, datatype )
```

#### Parameters

**userdata**
see importcarto_mem

**datatype**
the required data. Must be one of:
       'act', 'bip', 'uni', 'imp', 'frc'

**data**
The returned surface mapping data


#### Description
 GETSURFACEDATA Returns surface mapping data from userdata. Data type is
 specified by the 'datatype' argument:
   'act' - activation time
   'bip' - bipolar voltage
   'uni' - unipolar voltage
   'imp' - impedance
   'frc' - contact force

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getTotalActivationTime" />
##  getTotalActivationTime

 GETTOTALACTIVATIONTIME Returns the total activation time of the chamber

 

#### Usage
```m
tat = getTotalActivationTime( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**tat**
the total activation time, in ms


#### Description
 GETTOTALACTIVATIONTIME accepts the following parameter-value pairs
   'method'    {'ptbased'} | 'ptbasedprct' | 'clinmap' | 'clinmapprct' | 'openepmap' | 'openmapprct'
       - Specifies the method by which total activation time is calculated
   'prct'   {2.5} | double
       - The percentile to use for percentile mapping; only applicable if
        'method' is one of 'ptbasedprct', 'clinmapprct' or 'openepmapprct'.

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getVertices" />
##  getVertices

 GETVERTICES Returns the vertices referenced by userdata

 

#### Usage
```m
[vertices, vertsref] = getVertices( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**vertices**
all the vertices

**isVertUsed**
whether the vertex is referenced by the triangulation


#### Description
 GETVERTICES Returns the vertices referenced by userdata

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getVolume" />
##  getVolume

 GETVOLUME Calculates the volume of the chamber described in userdata

 

#### Usage
```m
volume = getVolume(userdata)
```

#### Parameters

**userdata**
see importcarto_mem

**volume**
the volume, in cm^3


#### Description
 GETVOLUME For details of the calculation see:
   https://stackoverflow.com/questions/1406029/how-to-calculate-the-volume-of-a-3d-mesh-object-the-surface-of-which-is-made-up
   http://chenlab.ece.cornell.edu/Publication/Cha/icip01_Cha.pdf
   EFFICIENT FEATURE EXTRACTION FOR 2D/3D OBJECTS IN MESH REPRESENTATION

**Author**  Steven Williams (2017) (Copyright)

---


<a name=" getWindowOfInterest" />
##  getWindowOfInterest

 GETWINDOWOFINTERST Returns the window of interest 

 

#### Usage
```m
woi = getWindowOfInterest( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**woi**
two-element array specifying the window of interest relative to
          the reference annotation


#### Description
 GETWINDOWOFINTEREST Accepts the following parameter-value pairs.
   'iEgm'    {:} | integer | array
        - The electrogram point(s) for which the window of interst is
        required

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" getpointelectrogramname" />
##  getpointelectrogramname

 GETPOINTELECTROGRAMNAME finds the electrode at xyz.
 

#### Usage
```m
[ electrogramname_bip, electrogramname_uni ] = getpointelectrogramname( point_xyz, pointFileName )
```

#### Parameters
   point_xyz 
   pointFileName 

**electrogramname_bip**
the electrode name for the bipolar electrogram at point_xyz

**electrogramname_uni**
cell array of the electrode names for the
       unipolar electrogram at point_xyz and it's associated second electrode
       that makes up electrogramname_bip

**point_xyz_2**
the electrode position corresponding to the second electrode
       that makes up the bipole at point_xyz (needed for locating unipolar
       electrograms)


#### Description
 GETPOINTELECTROGRAMNAME Detailed description

**Author**  Nick Linton (2012) (Copyright)

---


<a name=" getpointelectrogramname" />
##  getpointelectrogramname

 GETELCTRODENAME finds the electrode at xyz.

 

#### Usage
```m
[ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )
```

#### Parameters
   point_xyz 
   pointFileName 

**electrogramname_bip**
the electrode name for the bipolar electrogram at point_xyz

**electrogramname_uni**
cell array of the electrode names for the
       unipolar electrogram at point_xyz and it's associated second electrode
       that makes up electrogramname_bip

**point_xyz_2**
the electrode position corresponding to the second electrode
       that makes up the bipole at point_xyz (needed for locating unipolar
       electrograms)


#### Description
 GETELCTRODENAME Detailed description

**Author**  Nick Linton (2012) (Copyright)

---


<a name=" importcarto_mem" />
##  importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

#### Usage
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

#### Parameters
   dirName is the directory with all of the files corresponding to a map
   userdata is a single data structure
   matFileFullPath is the path to the .mat file, if opened or saved


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


<a name=" importcarto_mem" />
##  importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

#### Usage
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

#### Parameters
   dirName is the directory with all of the files corresponding to a map
   userdata is a single data structure
   matFileFullPath is the path to the .mat file, if opened or saved


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


<a name=" importvisitag" />
##  importvisitag

 IMPORTVISITAG provides a data structure from Carto visitag files.

 Usage
   visitag = importvisitag(userdata, dirName)
   visitag = imporvisitag()
 Where:
   dirName is the directory with all of the files corresponding to WiseTag
   visitag is a single data structure

 IMPORTVISITAG parses the data contained in a Visitag export from the
 Carto3 mapping system. The data is stored in a field '.rfindex' and the
 new userdata data structure with the appended ablation data is returned.


#### Usage
```m

```

#### Parameters


#### Description


**Author**  Steven Williams (2020) (Copyright)

---


<a name=" importvisitag" />
##  importvisitag

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


<a name=" openEP2VTK" />
##  openEP2VTK

 OPENEP2VTK Converts an OpenEP data structure to a VTK file

 

#### Usage
```m
tr = openEP2VTK('openfile')
```

#### Parameters

**tr**
a TriRep object

**path2VTKfile**
the path to the file that was written


#### Description
 OPENEP2VTK accepts the following parameter-value pairs
   'datatype'     {'bip'} | 'uni' | 'lat'
       - the required data, bipolar voltage, unipolar voltage or local
       activation time
   'method'       {'map'} | 'egm'
       - the method of accessing the data; clinical-system map based
       ('map') or re-inteprolated by OpenEP from the raw egms ('egm');
   'outputfile'
       - absolute path to the output file. 
       If empty then openEP2VTK outputs the VTK file to the current 
        directory using the current date/time as the filename
       If strcmpi('outputfile','openfile') a GUI is used to place the
        file

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" plotAblationArea" />
##  plotAblationArea

 PLOTABLATIONAREA Adds the ablation area to the current figure

 

#### Usage
```m
plotAblationArea(userdata)
```

#### Parameters

**userdata**
see importcarto_mem.m


#### Description
 PLOTABLATIONAREA Requires a userdata structure which contains .rfindex as
 its input, which can be created using importvisitag.m

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" plotElectrograms" />
##  plotElectrograms

 PLOTELECTROGRAMS Draws any number of electrograms in line.

 

#### Usage
```m
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
'linewidth', the width of the lines drawing the electrograms

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
```

#### Parameters


#### Description


**Author**  Steven Williams (2012) (Copyright)

---


<a name=" plotOpenEPEgms" />
##  plotOpenEPEgms

 PLOTOPENEPEGMS Plot eletrograms from OpenEP data

 

#### Usage
```m
[ hFig ] = plotOpenEPEgms( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**hFig**
a handle to the plotted figure


#### Description
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
           interest is drawn (+/-buffer). By specifying 'all' the entire point
           electrogram is drawn.
   'buffer'        {50}|double
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
   'linewidth', {1} | integer
           The width of the lines drawing the electrograms

**Author**  Steven Williams (2017) (Copyright)

---


<a name=" plotTag" />
##  plotTag

 PLOTTAG Plots tag(s) on the current map

 

#### Usage
```m
h = plotTag( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**h(i)**
is an array of handles referencing the plotted surfaces


#### Description
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

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" plotVisitags" />
##  plotVisitags

 PLOTVISITAGS Displays ablation data for a case

 

#### Usage
```m
plotVisitags(userdata)
```

#### Parameters

**userdata**
see importcarto_mem.m


#### Description
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

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" pointStatus" />
##  pointStatus

 POINTSTATUS Returns the status of points relevant to userdata

 

#### Usage
```m
[inoutpts, meshpts] = pointStatus( userdata )
```

#### Parameters

**userdata**
see importcarto_mem

**inoutpts**
whether points are internal (logical(1)) or external
               (logical(0)) to the triangulation in userdata

**meshpts**
whether points in the triangulation in userdata are
               referenced in the triangulation (logical(1)) or not
               (logical(0))


#### Description
 POINTSTATUS accepts the following parameter-value pairs:
   'tol' 0.1 | double
       - The distance threshold within which points are considered to be
         internal or external to the triangulation
   'plot'     {false}|true
       - Specify whether to plot the results

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" processSmartTouchForceData" />
##  processSmartTouchForceData

 PROCESSSMARTTOUCHFORCEDATA Gets a shell with force data
 

#### Usage
```m
[tr f] = processSmartTouchForceData(userdata)
```

#### Parameters

**userdata**
is a Carto dataset

**f**
are the 1000ms window forces

**loc**
are the coordinates of the data in f (size: length(f) * 3) 


#### Description
 PROCESSSMARTTOUCHFORCEDATA parses the force data at ablation points from
 userdata.

**Author**  Steven Williams (2013) (Copyright)

---


<a name=" read_ecgfile_v4" />
##  read_ecgfile_v4

 READ_ECGFILE loads this Carto3 ecg file.
 

#### Usage
```m
channelNames = read_ecgfile(filename);
[channelNames channelVoltages] = read_ecgfile(filename)
channelVoltages = read_ecgfile(filename, names)
```

#### Parameters
   channelVoltages channelNames are voltages and names
   filename is the Carto3 .txt file

**names is optional and is the desired channel names**
this helps speed


#### Description


**Author**  Nick Linton (2013) (Copyright)

---


<a name=" read_ecgfile_v4_header" />
##  read_ecgfile_v4_header

 READ_ECGFILE_V4_HEADER loads the header from an ECG file.
 

#### Usage
```m
[electrodename_bip] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni electrodename_ref] = read_ecgfile_v4_header(varargin)
```

#### Parameters
   electrodename_bip   is the name of the electrode pair collecting the bipolar mapping point
   electrodename_uni   is the name of the electrode collecting the unipolar mapping point
   electrodename_ref   is the name of the reference electrode for the mapping point


#### Description


**Author**  Steven Williams (2020) (Copyright)

---


<a name=" read_forcefile_v2" />
##  read_forcefile_v2

 READ_FORCEFILE loads this Carto3 force file.
 

#### Usage
```m
force = read_forcefile(filename);
[force axialAngle lateralAngle] = read_forcefile(filename)
[force axialAngle lateralAngle t_time t_force t_axialAngle t_lateralAngle] = read_forcefile(filename)
```

#### Parameters

**force**
is the fixed time point force for this point

**axialAngle**
is the fixed time point axial angle for this point

**lateralAngle**
is the fixed time point lateral angle for this point

**t_time**
is the time array (e.g. -7000ms->5000ms) for the time data

**t_force**
is the time course of force

**t_axialAngle**
is the time course of the axial angle

**t_lateralAngle**
is the time course of the lateral angle


#### Description
   filename is the Carto3.txt file

**Author**  Steven Williams (2013) (Copyright)

---


<a name=" read_meshfile" />
##  read_meshfile

 READ_MESHFILE loads this Carto3 mesh file.
 

#### Usage
```m
t = read_meshfile(filename)
[t isVertexAtEdge] = read_meshfile(filename)
[t isVertexAtEdge act_bip normals] = read_meshfile(filename)
```

#### Parameters
   filename is the filename
   t is a TriRep object
   isVertexAtEdge is a logical array indicating vertices at an edge
   act_bip is a matrix of activation times and bipolar voltage by vertex


#### Description
 READ_MESHFILE reads the triangulation from a TriangulatedMeshVersion 2.0
 file.

**Author**  Nick Linton (2011) (Copyright)

---


<a name=" read_positions_on_annotation_v2" />
##  read_positions_on_annotation_v2

 READ_POSITIONS_ON_ANNOTATION_V2 loads this Carto3 position file.
 

#### Usage
```m
[iElectrode xyz] = read_positions_on_annotation_v2(filename)
```

#### Parameters
   iElectrode is a vector of electrode numbers
   xyz is an array of xyz positions


#### Description


**Author**  Nick Linton (2013) (Copyright)

---


<a name=" read_visitag_file_v1" />
##  read_visitag_file_v1

 READ_VISITAG_FILE_V1 Reads a data file stored in a WiseTag or VisiTag
 directory

 

#### Usage
```m
[ data, header ] = read_visitag_file_v1( filepath )
```

#### Parameters

**filepath**
path to the file to be read

**data**
the the file data

**header**
the file header


#### Description
 READ_VISITAG_FILE_V1 Reads numeric data from data files stored in WiseTag or
 VisiTag directories. These files all have a standard format - header line
 followed by data lines; tab delimited. The headers are returned in a cell
 array to allow search/indexing.

**Author**  Steven Williams (2020) (Copyright)

---


<a name=" read_visitag_sites" />
##  read_visitag_sites

 READ_VISITAG_SITES loads Carto3 visitag sites.txt file.
 

#### Usage
```m
[sites] = read_visitag_sites(filename)
```

#### Parameters
   data is a matrix of all the data from the file
   labels is a cell array of the header lines from the file
   filename is the full file path


#### Description
 READ_VISITAG_SITES detailed description goes here

**Author**  Steven Williams (2015) (Copyright)

---


<a name=" read_visitagsettings" />
##  read_visitagsettings

 READ_VISITAGSETTINGS loads Carto3 visitag settings file.
 

#### Usage
```m
[visitagSettings] = read_visitagsettings(filename)
```

#### Parameters
   visitagSettings is a structure of the visitag settings
   filename is the full file path


#### Description
 READ_VISITAGSETTINGS creates a structure with the parameters in
 VisiTagSettings.txt. Data is converted to double if it is numeric or
 remains as a string if it is a string. Beware of equals sign at the end
 of the parameter names - these are currently removed by the code but
 would be an obvious source of future errors.

**Author**  Steven Williams (2015) (Copyright)

---


<a name=" voltageHistogramAnalysis" />
##  voltageHistogramAnalysis

 VOLTAGEHISTOGRAMANALYSIS Performs voltage histogram analysis

 

#### Usage
```m
areas = voltageHistogramAnalysis( userdata, varargin )
```

#### Parameters

**userdata**
see importcarto_mem

**areas**
he chamber areas within each of the voltage thresholds


#### Description
 VOLTAGEHISTOGRAMANALYSIS accepts the following parameter-value pairs
   'method'    {'map'}|'egm'
   'type'      {'bip'}|'uni'
   'threshold' n x 2 matrix of threshold values, default:
             [ 0.01 0.11; 0.11 0.21; 0.21 0.30; 0.30 0.40; 0.40 0.50 ]
   'plot'      {false} | true
   'colors'      {colorBrewer colors r, y, g, b, p}|

**Author**  Steven Williams (2020) (Copyright)

---