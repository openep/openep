---
title: API Reference
subtitle: >-
  Documentation for each available function
layout: page
---

<style>
.post-content p, {
  margin: 0;
}

.post-content > p {
  font-size: 85%;
}

pre.highlight {
  padding: 5pt;
  font-size: 80%;
}

td>p {
  margin: 0;
}

td {
  padding: 0;//
}
</style>





##  cartoMesh2VTK

 CARTOMESH2VTK Converts a Carto mesh file to VTK file

 

**Usage:**
```m
tr = cartoMesh2VTK('openfile')
```

<table><tr><td markdown="1">
**Variables:**

* out
  * tr
</td><td markdown="1">
**Where:**
```m

 tr, - a TriRep object
```

</td></tr></table>
 CARTOMESH2VTK Converts a Carto3 mesh to a VTK file and returns a TriRep
 object

**Author**  Steven Williams (2015)



##  cvHistogram

 CVHISTOGRAM Draws a conduction velocity histogram

 

**Usage:**
```m
cvHistogram( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * areas
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
```

</td></tr></table>
 CVHISTOGRAM accepts the following parameter-value pairs
 'limits' {[0 5]}|array in m/s
 'binwidth' {0.1}|double in m/s

**Author**  Steven Williams (2020)



##  drawMap

 DRAWMAP plots a Carto LAT map
 

**Usage:**
```m
hSurf = drawMap(userdata)
hSurf = drawMap(userdata, varargin);
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * hSurf
</td><td markdown="1">
**Where:**
```m

 hSurf - is a handle to the surface
 userdata - is a Carto data structure
```

</td></tr></table>
 DRAWMAP is essentially a wrapper function for colorShell.m. DRAWMAP
 accepts the following parameter-value pairs:
 'data' [d]
 - Where d is a vector of data values and size(d) equals numel(userdata.surface.triRep.X)
 'type' ('act')|'bip'|'force'|'uni'|'none'|'cv'
 - Specifies type of map - activation, bipolar or unipolar voltage
 'coloraxis' [a b]
 - Where a and b are real numbers. See help colorShell
 'noLight' (false)|true
 - If set to true no additional light will be drawn. Useful if
 overlaying maps.
 'usrColorMap' ([])|cMap
 - If set, this colormap will be used instead of the defaults
 colorbarlocation 'north' | 'south' | 'east' | 'west' | 'northoutside' |
 'southoutside' | 'eastoutside' | {'westoutside'}
 'orientation' ('AP')|'PA'
 - Specifies the view as AP or PA. LAO, RAO, LL, RL yet to be
 defined
 'colorfillthreshold' [c]
 - Where c is a scalar value; defaulting to 10mm

**Author**  Steven Williams (2016)



##  editUserdata

 EDITUSERDATA Graphically remove regions from a Carto dataset

 

**Usage:**
```m
userdata2 = editUserdata(userdata)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * userdata2
</td><td markdown="1">
**Where:**
```m

 userdata - is the original Carto dataset
 userdata2 - is the new Carto dataset with elements removed
```

</td></tr></table>
 EDITUSERDATA uses EDITTRIANGULATION to remove triangles from a TriRep
 object. Controls:
 Left click - select triangles to remove
 Shift-Left click - select triangles to keep
 Ctrl-Left click - select area up to the boundary
 d - done

**Author**  Steven Williams (2016)



##  fixVoltageAnnotations

 FIXVOLTAGEANNOTATIONS Fixes the uni/bip reversal identified in
 userdata.electric.voltages in August 2014. This function is not required
 for any userdata .mat files created after 27th August 2014.

 

**Usage:**
```m
userdata = fixVoltageAnnotations(userdata)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * data
</td><td markdown="1">
**Where:**
```m

 userdata - is the output
 userdata - is the input, or 'openfile'
```

</td></tr></table>
 FIXVOLTAGEANNOTATIONS detailed description goes here.

**Author**  Steven Williams (2014)



##  generateInterpData

 GENERATEINTERPDATA Creates a matrix of interpolated data

 

**Usage:**
```m
interpData = generateInterpData(userdata, datatype)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * datatype
  * varargin

* out
  * interpData
</td><td markdown="1">
**Where:**
```m

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
```

</td></tr></table>
 GENERATEINTERPDATA accepts the following parameter-value pairs
 'interMethod' nearest|linear|{natural}
 - The interpolation method, default to natural
 'exterMethod' {nearest}|linear|none
 - The extrapolation method, defaults to linear
 'distanceThresh' d
 - The distance threshold, d, default 10mm

**Author**  Steven Williams (2018)



##  getAblationArea

 GETABLATIONAREA Calculates the area of a chamber which has been ablated

 

**Usage:**
```m
area = getAblationArea( userdata, visitag )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * visitag
  * varargin

* out
  * ablArea
  * isAblated
  * trAbl
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem.m
 visitag - see importvisitag.m
 ablArea - the total area of the chamber that has been ablated
 isAblated - indexes into userdata.surface.triRep.Triangulation and
 indicates whether a particular triangle is considered
 ablated (1) or not (0).
 trAbl - a Triangulation of the ablated tissue
```

</td></tr></table>
 GETABLATIONAREA accepts the following parameter-value pairs
 'method' {'tags'}|'grid'
 - specifies whether to calculate area based on the ablation tags or
 the ablation grid
 'radius' {5}|double
 - specifies the radius around each ablation tag to consider ablated
 'thresholdmethod' {'on'}|'off'
 - NOT YET IMPLEMENTED
 'thresholdvalue'
 - NOT YET INMPLEMENTED

**Author**  Steven Williams (2020)



##  getAnatomicalStructures

 GETANATOMICALSTRUCTURES Returns free boundaries (anatomical structures)
 described in userdata

 

**Usage:**
```m
[trAnatStruct] = getAnatomicalStructures( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * FF
  * l
  * a
  * tr
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 FF - see TriRep/freeBoundary, cell array
 l - array of lengths of each free boundary
 a - an array of areas of each free boundary
 tr - cell array of triangulations of each free boundary
```

</td></tr></table>
 GETANATOMICALSTRUCTURES accepts the following parameter-value pairs
 'plot' {false}|true

**Author**  Steven Williams (2020)



##  getArea

 GETAREA Returns the surface area of the chamber geometry

 

**Usage:**
```m
area = getArea( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * area
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 area - the surface area (cm^2)
```

</td></tr></table>
 GETAREA accepts the following parameter-value pairs
 'method' {nofill}|fill

**Author**  Steven Williams (2020)



##  getClosedSurface

 GETCLOSEDSURFACE Fills all the holes in the userdata surface

 

**Usage:**
```m
tr = getClosedSurface( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * tr
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 tr - a triRep object
```

</td></tr></table>
 GETCLOSEDSURFACE Closes the surface by the following algorithm. First,
 every complete free boundary is identified. Second, the barycentre of the
 free boundary is identified. Third, a triangulation is created covering
 this hole. Finally, the additional triangles are added to the triRep.

**Author**  Steven Williams (2020)



##  getConductionVelocity

 GETCONDUCTIONVELOCITY Returns the total conduction velocity map of the 
 chamber

 

**Usage:**
```m
cvdata = getConductionVelocity( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * cvdata
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 cvdata - the conduction velocities, in m/s
```

</td></tr></table>
 GETCONDUCTIONVELOCITY Calculate conduction velocities by calculating
 gradients of interpolated local activation times. GETCONDUCTIONVELOCITY
 makes use of a modified version of "Scattered Data Interpolation and 
 Approximation using Radial Base Functions" available from the Matlab
 FileExchange:

**Author**  Steven Williams (2020)



##  getEarliestActivationSite

 GETEARLIESTACTIVATIONSITE Returns the earliest activation site

 

**Usage:**
```m
[X] = getEarliestActivationSite( userdata )
[X, surfX] = getEarliestActivationSite( userdata )
[X, surfX, iPoint] = getEarliestActivationSite( userdata )
[X, surfX, iPoint, t] = getEarliestActivationSite( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * X
  * surfX
  * iPoint
  * t
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 X - the earliest activation site, in x,y,z format. For
 map-based methods (i.e. 'clinmap', 'clinmapprct',
 'openepmap'and 'openepmapprct'), X is identical to
 surfX.
 surfX - the surface projection of the eariest activation site
 iPoint - the closest mapping point to the earliest activation
 site. For point-based methods (i.e. 'ptbased' or 
 'ptbasedprct'), iPoint indexes into userdata.electric.
 For map-based methods (i.e. 'clinmap', 'clinmapprct',
 'openepmap', 'openepmapprct'), iPoint indexes into
 userdata.surface.triRep.X. For percentile methods (i.e.
 'ptbasedprct', 'cinmapprct' or 'openepmapprct') iPoint
 returns all the points that were identified within the
 relevant percentile.
 t - the calculated earliest activation time, relative to the
 reference annotation
```

</td></tr></table>
 GETEARLIESTACTIVATIONSITE accepts the following parameter-value pairs
 'method' {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'
 - Specifies the method by which the earliest activation is
 calculated, as follows:
 'ptbased' - Calculates the earliest activation time using 
 mapping points exported by the clinical system.
 'ptbasedprct'- Calculates the earliest 2.5th percentile mapping 
 times on the exported electrogram annotations, then 
 calculates the mean of this sets of activation times.
 'clinmap' - Calculates the earliest activation time on the 
 local activation time map created by the clinical 
 mapping system
 'clinmapprct'- First calculates the earliest 2.5th percentile 
 mapping times on the clinical local activation time 
 map, then calculates the mean of these sets of 
 activation times.
 'openepmap' - Calculates the earliest activation time on the local 
 activation time map created by OpenEP from the 
 exported electrogram annotations.
 'openepmapprct'- First calculates the earliest 2.5th percentile 
 mapping times on the local activation time map 
 created by OpenEP from the exported electrogram 
 annotations. Then calculates the mean of this set of 
 activation times.
 'prct' {2.5}|[prct]
 - The percentile to use for percentile mapping; only applicable if
 'method' is 'percentile'.

**Author**  Steven Williams (2019)



##  getEgmsAtPoints

 GETEGMSATPOINTS Can be used to access eletrograms from userdata

 

**Usage:**
```m
[ hFig ] = plotOpenEPEgms( userdata, varargin )
[ hFig, hLine ] = plotOpenEPEgms( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * egmTraces
  * acttime
  * egmNames
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 egmTraces - cell array of the requested electrograms
 acttime - cell array of activation times 
 egmNames - names of the electrograms
```

</td></tr></table>
 GETEGMSATPOINTS accepts the following parameter-value pairs
 'iEgm' {:}|[a:b]
 an array indexing into userdata.electric.egm such that
 % 'iEgm' {:}|[a:b]
 an array indexing into userdata.electric.egm such that
 userdata.electric.egm(iEgmArray,:) are selected for plotting
 To convert from Carto point numbers to iEgmArray use
 getIndexFromCartoPointNumber.
 'egmtype' 'bip'|'uni'|{'bip-uni'}
 Whether to plot only the bipolar electrograms, only the
 unipolar electrograms or both
 'reference' 'off'|{'on'}
 Whether to plot the reference channel, off by default userdata.electric.egm(iEgmArray,:) are selected for plotting
 To convert from Carto point numbers to iEgmArray use
 getIndexFromCartoPointNumber.

**Author**  Steven Williams (2020)



##  getFaces

 GETFACES Returns the faces referenced by userdata

 

**Usage:**
```m
faces = getFaces( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * faces
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 faces - all the faces
```

</td></tr></table>


**Author**  Steven Williams (2020)



##  getIndexFromCartoPointNumber

 GETINDEXFROMCARTOPOINTNUMBER finds the electrode at xyz.

 

**Usage:**
```m
[index] = getIndexFromCartoPointNumber(pointNumber)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * pointNumber

* out
  * index
</td><td markdown="1">
**Where:**
```m

 useredata - a userdata structure
 pointNumber - a point number (or array of point numbers) as displayed
 on the Carto mapping system
 index - an index (or array of indices) for referenceing into the
 data fields within userdata.electric
```

</td></tr></table>
 GETINDEXFROMCARTOPOINTNUMBER Detailed description goes here

**Author**  Steven Williams (2020)



##  getLatestActivationSite

 GETLATESTACTIVATIONSITE Returns the earliest activation site

 

**Usage:**
```m
[X] = getLatestActivationSite( userdata )
[X, surfX] = getLatestActivationSite( userdata )
[X, surfX, iPoint] = getLatestActivationSite( userdata )
[X, surfX, iPoint, t] = getLatestActivationSite( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * X
  * surfX
  * iPoint
  * t
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 X - the latest activation site, in x,y,z format. For
 map-based methods (i.e. 'clinmap', 'clinmapprct',
 'openepmap'and 'openepmapprct'), X is identical to
 surfX.
 surfX - the surface projection of the latest activation site
 iPoint - the closest mapping point to the latest activation
 site. For point-based methods (i.e. 'ptbased' or 
 'ptbasedprct'), iPoint indexes into userdata.electric.
 For map-based methods (i.e. 'clinmap', 'clinmapprct',
 'openepmap', 'openepmapprct'), iPoint indexes into
 userdata.surface.triRep.X. For percentile methods (i.e.
 'ptbasedprct', 'cinmapprct' or 'openepmapprct') iPoint
 returns all the points that were identified within the
 relevant percentile.
 t - the calculated latest activation time, relative to the
 reference annotation
```

</td></tr></table>
 GETLATESTACTIVATIONSITE accepts the following parameter-value pairs
 'method' {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'
 - Specifies the method by which the earliest activation is
 calculated, as follows:
 'ptbased' - Calculates the latest activation time using the 
 mapping points exported by the clinical system.
 'ptbasedprct'- Calculates the latest 2.5th percentile mapping 
 times on the exported electrogram annotations, then 
 calculates the mean of this sets of activation times.
 'clinmap' - Calculates the latest activation time on the 
 local activation time map created by the clinical 
 mapping system
 'clinmapprct'- First calculates the latest 2.5th percentile 
 mapping times on the clinical local activation time 
 map, then calculates the mean of these sets of 
 activation times.
 'openepmap' - Calculates the latest activation time on the local 
 activation time map created by OpenEP from the 
 exported electrogram annotations.
 'openepmapprct'- First calculates the latest 2.5th percentile 
 mapping times on the local activation time map 
 created by OpenEP from the exported electrogram 
 annotations. Then calculates the mean of this set of 
 activation times.
 'prct' {2.5}|[prct]
 - The percentile to use for percentile mapping; only applicable if
 'method' is 'percentile'.

**Author**  Steven Williams (2019)



##  getLowVoltageArea

 GETLOWVOLTAGEAREA Returns the low voltage area

 

**Usage:**
```m
lowVoltageArea = getLowVoltageArea( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * lowVoltageArea
  * voltages
  * iTri
  * tr2
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 lowVoltageArea - the low voltage area (cm^2)
 voltages - the voltages point values used to calculate areas
 iTri - indexes into userdata.surface.triRep.Triangulation and refers
 to the triangles that have voltage values within the range,
 threshld
 tr2 - a triangulation of all the triangles referenced in iTri.
```

</td></tr></table>

 GETLOWVOLTAGEAREA accepts the following parameter-value pairs
 'method' {'map'} |'egm'
 'type' {bip'} |'uni'
 'threshold' {[0.0 0.5]} |[t]

**Author**  Steven Williams (2020)



##  getMappingPointsWithinWoI

 GETMAPPINGPOINTSWITHINWOI Returns the indices of the mapping points with
 annotated local activation time within the window of interest

 

**Usage:**
```m
iPoint = getMappingPointsWithinWoI( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * iPoint
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 iPoint - the list of valid points; indexes into userdata.electric
```

</td></tr></table>
 GETMAPPINGPOINTSWITHINWOI Detailed description goes here

**Author**  Steven Williams (2020)



##  getMeanVoltage

 GETMEANVOLTAGE Returns the mean voltage

 

**Usage:**
```m
meanVoltage = getMeanVoltage( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * meanVoltage
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 meanVoltage - the mean chamber voltage (mV)
```

</td></tr></table>
 GETMEANVOLTAGE accepts the following parameter-value pairs
 'method' {'map'}|'egm'
 'type' {bip'}|'uni'

**Author**  Steven Williams (2020)



##  getMesh

 GETMESH Returns the triangulation-based mesh from userdata

 

**Usage:**
```m
tr = getMesh(userdata)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * tr
</td><td markdown="1">
**Where:**
```m

 tr - a TriRep object
```

</td></tr></table>
 GETMESH accepts the following parameter-value pairs
 'type' {'trirep'}|'triangulation'
 - Specifies whether to return the mesh as a TriRep object or as a
 Triangulation object

**Author**  Steven Williams (2020)



##  getNumPts

 GETNUMPTS Returns the number of mapping points in userdata

 

**Usage:**
```m
numpts = getNumPts( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * numpts
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 numpts - the number of mapping points
```

</td></tr></table>
 GETNUMPTS Detailed description goes here

**Author**  Steven Williams (2020)



##  getPointImpedanceValue

 GETPOINTIMPEDANCEVALUE Provides an algorithm for giving point impedance
 values

 

**Usage:**
```m
h = myfunction(b)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * imp
  * tim

* out
  * a
</td><td markdown="1">
**Where:**
```m

 a - is the output
 imp - impedance values at times tim
```

</td></tr></table>
 Impedance values are streaming every 100ms to Carto 3 system from the 
 RF Generator. A time range of -7.5s to +2.5s is output for each point and
 saved in userdata.electric.impedances (.time and .value) in the mat
 files.

**Author**  Steven Williams (2014)



##  getSurfaceData

 GETSURFACEDATA Returns the data, datatype, from userdata

 

**Usage:**
```m
data = getMappingData( userdata, datatype )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * datatype

* out
  * data
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 datatype - the required data. Must be one of:
 'act', 'bip'
```

</td></tr></table>
 GETSURFACEDATA Detailed description goes here

**Author**  Steven Williams (2020)



##  getTotalActivationTime

 GETTOTALACTIVATIONTIME Returns the total activation time of the chamber

 

**Usage:**
```m
tat = getTotalActivationTime( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * tat
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 tat - the total activation time, in ms
```

</td></tr></table>
 GETTOTALACTIVATIONTIME accepts the following parameter-value pairs
 'method' {'ptbased'}|'ptbasedprct'|'clinmap'|'clinmapprct'|'openepmap'|'openmapprct'
 - Specifies the method by which total activation time is calculated
 as follows:
 'ptbased' - Calculates the difference in activation time between 
 the earliest and latest activation time mapping 
 points exported by the clinical system.
 'ptbasedprct'- First calculates the earliest 2.5th percentile and 
 the latest 2.5th percentile mapping times on the 
 exported electrogram annotations, then calculates 
 the difference between the means of these sets of 
 activation times.
 'clinmap' - Calculates the difference between the earliest and 
 latest activation times on the local activation 
 time map created by the clinical mapping system
 'clinmapprct'- First calculates the earliest 2.5th percentile and 
 latest 2.5th percentile mapping times on the 
 clinical local activation time map, then calculates 
 the difference between the means of these sets of 
 activation times.
 'openepmap' - Calculates the difference between the earliest and 
 latest activation times on the local activation 
 time map created by OpenEP from the exported 
 electrogram annotations.
 'openepmapprct'- First calculates the earliest 2.5th percentile and 
 latest 2.5th percentile mapping times on the local 
 activation time map created by OpenEP from the 
 exported electrogram annotations. Then calculates 
 the difference between the means of these sets of 
 activation times.
 'prct' {2.5}|[prct]
 - The percentile to use for percentile mapping; only applicable if
 'method' is one of 'ptbasedprct', 'clinmapprct' or 'openepmapprct'.

**Author**  Steven Williams (2020)



##  getVertices

 GETVERTICES Returns the vertices referenced by userdata

 

**Usage:**
```m
[vertices, vertsref] = getVertices( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * vertices
  * isVertUsed
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 vertices - all the vertices
 isVertUsed - whether the vertex is referenced by the triangulation
```

</td></tr></table>


**Author**  Steven Williams (2020)



##  getVolume

 GETVOLUME Calculates the volume the chamber described in userdata

 

**Usage:**
```m
volume = getVolume(usredata)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata

* out
  * volume
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 volume - the volume, in cm^3
```

</td></tr></table>
 GETVOLUME For details of the calculation see:
 https://stackoverflow.com/questions/1406029/how-to-calculate-the-volume-of-a-3d-mesh-object-the-surface-of-which-is-made-up
 http://chenlab.ece.cornell.edu/Publication/Cha/icip01_Cha.pdf
 EFFICIENT FEATURE EXTRACTION FOR 2D/3D OBJECTS IN MESH REPRESENTATION

**Author**  Steven Williams (2017)



##  getpointelectrogramname

 GETELCTRODENAME finds the electrode at xyz.
 

**Usage:**
```m
[ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * point_xyz
  * pointFileName

* out
  * electrogramname_bip
  * electrogramname_uni
  * point_xyz_2
</td><td markdown="1">
**Where:**
```m

 point_xyz - 
 pointFileName - 
 electrogramname_bip - the electrode name for the bipolar electrogram at point_xyz
 electrogramname_uni - cell array of the electrode names for the
 unipolar electrogram at point_xyz and it's associated second electrode
 that makes up electrogramname_bip
 point_xyz_2 - the electrode position corresponding to the second electrode
 that makes up the bipole at point_xyz (needed for locating unipolar
 electrograms)
```

</td></tr></table>
 GETELCTRODENAME Detailed description

**Author**  Nick Linton (2012)



##  getpointelectrogramname

 GETELCTRODENAME finds the electrode at xyz.

 

**Usage:**
```m
[ electrogramname_bip, electrogramname_uni ] = getelectrogramname( point_xyz, pointFileName )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * point_xyz
  * pointFileName

* out
  * electrogramname_bip
  * electrogramname_uni
  * point_xyz_2
</td><td markdown="1">
**Where:**
```m

 point_xyz - 
 pointFileName - 
 electrogramname_bip - the electrode name for the bipolar electrogram at point_xyz
 electrogramname_uni - cell array of the electrode names for the
 unipolar electrogram at point_xyz and it's associated second electrode
 that makes up electrogramname_bip
 point_xyz_2 - the electrode position corresponding to the second electrode
 that makes up the bipole at point_xyz (needed for locating unipolar
 electrograms)
```

</td></tr></table>
 GETELCTRODENAME Detailed description

**Author**  Nick Linton (2012)



##  importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

**Usage:**
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * userdata
  * matFileFullPath
</td><td markdown="1">
**Where:**
```m

 dirName is the directory with all of the files corresponding to a map
 userdata is a single data structure
 matFileFullPath is the path to the .mat file, if opened or saved
```

</td></tr></table>
 IMPORTCARTO can load data in 3 ways:
 1) USERINPUT is a .zip file - the zip file will be unzipped into a
 temporary file (deleted at the end). The data is packed into userdata
 and the user is incouraged to save this for the future (long time take
 to unzip).
 2) USERINPUT is a .mat file containing userdata
 3) USERINPUT is a .xml file - this must be the xml file in a folder
 containing all the other Carto3 files.

**Author**  Nick Linton (2011)



##  importcarto_mem

 IMPORTCARTO provides a data structure from multiple carto files (from zip).
 

**Usage:**
```m
userdata = importcarto_mem(userinput)
userdata = importcarto_mem()
[userdata, matFileFullPath] = ...
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * userdata
  * matFileFullPath
</td><td markdown="1">
**Where:**
```m

 dirName is the directory with all of the files corresponding to a map
 userdata is a single data structure
 matFileFullPath is the path to the .mat file, if opened or saved
```

</td></tr></table>
 IMPORTCARTO can load data in 3 ways:
 1) USERINPUT is a .zip file - the zip file will be unzipped into a
 temporary file (deleted at the end). The data is packed into userdata
 and the user is incouraged to save this for the future (long time take
 to unzip).
 2) USERINPUT is a .mat file containing userdata
 3) USERINPUT is a .xml file - this must be the xml file in a folder
 containing all the other Carto3 files.

**Author**  Nick Linton (2011)



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



**Usage:**
```m

```

<table><tr><td markdown="1">
**Variables:**
* in
  * dirName

* out
  * visitag
</td><td markdown="1">
**Where:**
```m

```

</td></tr></table>


**Author**  Steven Williams (2014)



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


**Usage:**
```m

```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * visitag
  * matFileFullPath
</td><td markdown="1">
**Where:**
```m

```

</td></tr></table>


**Author**  Steven Williams (2014)



##  openEP2VTK

 OPENEP2VTK Converts a Carto mesh file to VTK file

 

**Usage:**
```m
tr = openEP2VTK('openfile')
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * path2VTKfile
</td><td markdown="1">
**Where:**
```m

 tr - a TriRep object
 path2VTKfile - the path to the file that was written
```

</td></tr></table>
 OPENEP2VTK accepts the following parameter-value pairs
 'datatype' {'bip'}|'uni'|'lat'
 - the required data, bipolar voltage, unipolar voltage or local
 activation time
 'method' {'map'}|'egm'
 - the method of accessing the data; clinical-system map based
 ('map') or re-inteprolated by OpenEP from the raw egms ('egm');
 'outputfile'
 - absolute path to the output file. 
 If empty then openEP2VTK outputs the VTK file to the current 
 directory using the current date/time as the filename
 If strcmpi('outputfile','openfile') a GUI is used to place the
 file

**Author**  Steven Williams (2020)



##  plotAblationArea

 PLOTABLATIONAREA Adds the ablation area to the current figure

 

**Usage:**
```m
plotAblationArea( userdata, visitag )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * visitag
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem.m
 visitag - see importvisitag.m
```

</td></tr></table>
 PLOTABLATIONAREA Requires a userdata structure and a visitag structure as 
 its inputS

**Author**  Steven Williams (2020)



##  plotElectrograms

 PLOTELECTROGRAMS Draws any number of electrograms in line.

 

**Usage:**
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
```

<table><tr><td markdown="1">
**Variables:**
* in
  * egmTraces
  * varargin

* out
  * hFig
</td><td markdown="1">
**Where:**
```m

```

</td></tr></table>


**Author**  Steven Williams (2012)



##  plotOpenEPEgms

 PLOTOPENEPEGMS Can be used to plot eletrograms from userdata

 

**Usage:**
```m
[ hFig ] = plotOpenEPEgms( userdata, varargin )
[ hFig, hLine ] = plotOpenEPEgms( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * hFig
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 hFig - a handle to the plotted figure
```

</td></tr></table>
 PLOTOPENEPEGMS accepts the following parameter-value pairs
 'iEgm' {:}|[a:b]
 an array indexing into userdata.electric.egm such that
 % 'iEgm' {:}|[a:b]
 an array indexing into userdata.electric.egm such that
 userdata.electric.egm(iEgmArray,:) are selected for plotting
 To convert from Carto point numbers to iEgmArray use
 getIndexFromCartoPointNumber.
 'range' {'window'}|'all'
 By default ('window') only the electrogram within the window of
 interest is drawn (±buffer). By specifying 'all' the entire point
 electrogram is drawn.
 'buffer' {50}|[buffer]
 The time before and after the window of interest to draw. By
 default, 20ms, but can be changed by setting 'buffer' to an
 alternative value.
 'egmtype' 'bip'|'uni'|{'bip-uni'}
 Whether to plot only the bipolar electrograms, only the
 unipolar electrograms or both
 'reference' 'off'|{'on'}
 Whether to plot the reference channel, off by default userdata.electric.egm(iEgmArray,:) are selected for plotting
 To convert from Carto point numbers to iEgmArray use
 getIndexFromCartoPointNumber.

**Author**  Steven Williams (2017)



##  plotTag

 PLOTTAG Plots tag(s) on the current map

 

**Usage:**
```m
area = plotTag( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * h
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 h(i) - is an array of handles referencing the plotted surfaces
```

</td></tr></table>
 PLOTTAG accepts the following parameter-value pairs
 'coord' {[x y x]}
 - A set of x,y,z coords where size(coords) = nx3 where n is the
 number of tags to plot
 'pointnum' [p1, p2, ... pn]
 - An array of size nx1 where n is the number of tags to plot
 'color' {'r'}|'g'|'b'|'p'|'o'|'y'
 - The color of the tag to draw
 'size'
 - The size of the tag to draw

**Author**  Steven Williams (2020)



##  plotVisitags

 PLOTVISITAGS Plots ablation data for a case

 

**Usage:**
```m
[ vol ] = plotVisitags( userdata, visitag )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * visitag
  * varargin
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem.m
 visitag - see importvisitag.m
```

</td></tr></table>
 PLOTVISITAG accepts the following parameter-value pairs
 'plot' {'tags'}|'grid'|'both'
 - specifies whether to show the tags, the grid, or both
 'shell' {'on'}|'off'
 - specifies whether to show the chamber shell
 'colour' {'r'}|colorspec|array 
 - can be a string or colorspec specifying the color of all the
 spheres
 - can be an array of double values which is rendered as a
 colorscale
 'orientation' see drawMap.m

**Author**  Steven Williams (2020)



##  pointStatus

 POINTSTATUS Returns the status of points relevant to userdata

 

**Usage:**
```m
[inoutpts, meshrefpts] = pointStatus( userdata )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * inoutpts
  * meshpts
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
 inoutpts - whether points are internal (logical(1)) or external
 (logical(0)) to the triangulation in userdata
 meshpts - whether points in the triRep field of userdata are
 referenced in the triangulation (logical(1)) or not
 (logical(0))
```

</td></tr></table>
 POINTSTATUS accepts the following parameter-value pairs:
 'distanceThreshold' 2|[d]
 - The distance threshold within which points are considered to be
 internal or external to the triangulation
 'plot' {false}|true

**Author**  Steven Williams (2020)



##  processSmartTouchForceData

 PROCESSSMARTTOUCHFORCEDATA Gets a shell with force data
 

**Usage:**
```m
[tr f] = processSmartTouchForceData(userdata)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * hSurf
</td><td markdown="1">
**Where:**
```m

 userdata - is a Carto dataset
 f - are the 1000ms window forces
 loc - are the coordinates of the data in f (size: length(f) Gemfile Gemfile.lock README.md THEME-LICENSE.md _config.yml _gen _includes _layouts _plugins _sass _site api.md assets documentation.md examples.md images index.md js roadmap.md 3) 
```

</td></tr></table>
 PROCESSSMARTTOUCHFORCEDATA parses the force data at ablation points from
 userdata.

**Author**  Steven Williams (2013)



##  read_ecgfile_v4

 READ_ECGFILE loads this Carto3 ecg file.
 

**Usage:**
```m
channelNames = read_ecgfile(filename);
[channelNames channelVoltages] = read_ecgfile(filename)
channelVoltages = read_ecgfile(filename, names)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * varargout
</td><td markdown="1">
**Where:**
```m

 channelVoltages channelNames are voltages and names
 filename is the Carto3 .txt file
 names is optional and is the desired channel names - this helps speed
```

</td></tr></table>


**Author**  Nick Linton (2013)



##  read_ecgfile_v4_header

 READ_ECGFILE_V4_HEADER loads the header from an ECG file.
 

**Usage:**
```m
[electrodename_bip] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni] = read_ecgfile_v4_header(varargin)
[electrodename_bip electrodename_uni electrodename_ref] = read_ecgfile_v4_header(varargin)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * varargout
</td><td markdown="1">
**Where:**
```m

 electrodename_bip is the name of the electrode pair collecting the bipolar mapping point
 electrodename_uni is the name of the electrode collecting the unipolar mapping point
 electrodename_ref is the name of the reference electrode for the mapping point
```

</td></tr></table>
 name = '';
 for j = 1:numel(iNeeded)
 name = [name separator tokens{iNeeded(j)}];
 end
 name(1) = [];
 end
end

**Author**  Steven Williams (2020)



##  read_forcefile_v2

 READ_FORCEFILE loads this Carto3 force file.
 

**Usage:**
```m
force = read_forcefile(filename);
[force axialAngle lateralAngle] = read_forcefile(filename)
[force axialAngle lateralAngle t_time t_force t_axialAngle t_lateralAngle] = read_forcefile(filename)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * varargout
</td><td markdown="1">
**Where:**
```m

 force - is the fixed time point force for this point
 axialAngle - is the fixed time point axial angle for this point
 lateralAngle - is the fixed time point lateral angle for this point
 t_time - is the time array (e.g. -7000ms->5000ms) for the time data
 t_force - is the time course of force
 t_axialAngle - is the time course of the axial angle
 t_lateralAngle - is the time course of the lateral angle
```

</td></tr></table>
 filename is the Carto3 .txt file

**Author**  Steven Williams (2013)



##  read_meshfile

 READ_MESHFILE loads this Carto3 mesh file.
 

**Usage:**
```m
t = read_meshfile(filename)
[t isVertexAtEdge] = read_meshfile(filename)
[t isVertexAtEdge act_bip normals] = read_meshfile(filename)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * filename

* out
  * varargout
</td><td markdown="1">
**Where:**
```m

 filename is the filename
 t is a TriRep object
 isVertexAtEdge is a logical array indicating vertices at an edge
 act_bip is a matrix of activation times and bipolar voltage by vertex
```

</td></tr></table>
 READ_MESHFILE reads the triangulation from a TriangulatedMeshVersion 2.0
 file.

**Author**  Nick Linton (2011)



##  read_positions_on_annotation_v2

 READ_POSITIONS_ON_ANNOTATION_V2 loads this Carto3 position file.
 

**Usage:**
```m
[iElectrode xyz] = read_positions_on_annotation_v2(filename)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * iElectrode xyz
</td><td markdown="1">
**Where:**
```m

 iElectrode is a vector of electrode numbers
 xyz is an array of xyz positions
```

</td></tr></table>


**Author**  Nick Linton (2013)



##  read_visitag_file_v1

 READ_VISITAG_FILE_V1 Reads a data file stored in a WiseTag or VisiTag
 directory

 

**Usage:**
```m
[ data, header ] = read_visitag_file_v1( filepath )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * filepath

* out
  * data
  * header
</td><td markdown="1">
**Where:**
```m

 filepath - path to the file to be read
 data - the the file data
 header - the file header
```

</td></tr></table>
 READ_VISITAG_FILE_V1 Reads numeric data from data files stored in WiseTag or
 VisiTag directories. These files all have a standard format - header line
 followed by data lines; tab delimited. The headers are returned in a cell
 array to allow search/indexing.

**Author**  Steven Williams (2020)



##  read_visitag_sites

 READ_VISITAG_SITES loads Carto3 visitag sites.txt file.
 

**Usage:**
```m
[sites] = read_visitag_sites(filename)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * data
  * labels
</td><td markdown="1">
**Where:**
```m

 data is a matrix of all the data from the file
 labels is a cell array of the header lines from the file
 filename is the full file path
```

</td></tr></table>
 READ_VISITAG_SITES detailed description goes here

**Author**  Steven Williams (2015)



##  read_visitagsettings

 READ_VISITAGSETTINGS loads Carto3 visitag settings file.
 

**Usage:**
```m
[visitagSettings] = read_visitagsettings(filename)
```

<table><tr><td markdown="1">
**Variables:**
* in
  * varargin

* out
  * visitagSettings
</td><td markdown="1">
**Where:**
```m

 visitagSettings is a structure of the visitag settings
 filename is the full file path
```

</td></tr></table>
 READ_VISITAGSETTINGS creates a structure with the parameters in
 VisiTagSettings.txt. Data is converted to double if it is numeric or
 remains as a string if it is a string. Beware of equals sign at the end
 of the parameter names - these are currently removed by the code but
 would be an obvious source of future errors.

**Author**  Steven Williams (2015)



##  voltageHistogramAnalysis

 VOLTAGEHISTOGRAMANALYSIS Returns the mean voltage

 

**Usage:**
```m
areas = plotVoltageHistogram( userdata, varargin )
```

<table><tr><td markdown="1">
**Variables:**
* in
  * userdata
  * varargin

* out
  * areas
</td><td markdown="1">
**Where:**
```m

 userdata - see importcarto_mem
```

</td></tr></table>
 GETMEANVOLTAGE accepts the following parameter-value pairs
 'method' {'map'}|'egm'
 'type' {bip'}|'uni'
 'threshold' n x 2 matrix of threshold values; default:
 [ 0.01 0.11
 0.11 0.21
 0.21 0.30
 0.30 0.40
 0.40 0.50 ]
 'plot' {false} | true
 areas The chamber areas within each of the voltage thresholds
 colors {colorBrewer colors r, y, g, b, p}|

**Author**  Steven Williams (2020)
