---
title: Examples
layout: page
---
<img src="/images/examples.png">
The figure above shows the key components of the OpenEP framework. There is a Data Parsing module which is used to convert proprietary electroanatomic mapping formats into the OpenEP data format. There are the Data Analytics modules which are used to visualise, interpret and analyse OpenEP data. Since these modules make use of the OpenEP data format, once electroanatomic mapping data is in this format each of these modules can be used to process the data. OpenEP data analysis modules are available to process activation data, voltage data, ablation data and geometric data.

## Ablation quantification
<img src="/images/gallery-ablation.png">
OpenEP can be used to display representations of ablation points and to quantify the ablation area. The worked-through example here uses "visitag" data from the Carto3 electroanatomic mapping platform. This data is not loaded automatically using a call to importcarto_mem and needs to be loaded separately. This is done by using the following code, but has already been done for Example 1.
```matlab
folderPath = <path to the visitag folder>
userdata = importvisitag(userdata, folderPath)
```
To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```
To display ablation lesions:
```matlab
% Display using defaults
plotVisitags(userdata, 'orientation', 'ap');

% Change the ablation lesion colour
plotVisitags(userdata, 'orientation', 'ap', 'colour', 'b');

% Colour ablation lesions according to the rf index value (in this case the Ablation Index)
plotVisitags(userdata, 'orientation', 'ap', 'colour', userdata.rfindex.tag.index.value);

% Show only the ablation lesions and not the shell
plotVisitags(userdata, 'orientation', 'ap', 'colour', userdata.rfindex.tag.index.value, 'shell', 'off');
```
For visitag data, the co-ordinates of the grid can also be accessed and displayed.
```matlab
% With the shell
plotVisitags(userdata, 'plot', 'grid')

% Without the shell
plotVisitags(userdata, 'plot', 'grid', 'shell', 'off')
```
To calculate the area of tissue ablated, use the `getAblationArea.m` function.
```matlab
% Calculate the total ablation area
ablArea = getAblationArea(userdata)

% Access the ablation area as a triangulation
[~, ~, trAbl] = getAblationArea( userdata )

% Plot the ablation area
plotAblationArea(userdata)
```
### API Links
getAblationArea.m
plotAblationArea.m
plotVisitags.m
importvisitag.m

## Activation mapping
<img src="/images/gallery-lat.png">

Local activation time maps created by the clinical mapping system can be displayed using the OpenEP framework. Local activation time maps can also be re-interpolated from raw electrogram data by OpenEP (see `generateInterpData.m`) and the resulting interpolated maps displayed using OpenEP.

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

Display the activation map created by the clinical electroanatomic mapping system:
```matlab
% Since the data already exists, we can call drawMap.m directly, specifying 'type' = 'act'
drawMap(userdata, 'type', 'act');

% Change the orientation of the map using the 'orientation' flag
drawMap(userdata, 'type', 'act', 'orientation', 'ap'); % antero-posterior orientation
drawMap(userdata, 'type', 'act', 'orientation', 'pa'); % postero-anterior orientation

% Change the window of interest to cover the earliest 10% of electrograms
activationTimes = getSurfaceData(userdata, 'act');
tMin = nanmin(activationTimes);
tMax = nanmax(activationTimes);
tRange = tMax - tMin;
tEnd = tMin + floor(tRange*0.1);
drawMap(userdata, 'type', 'act', 'orientation', 'pa', 'coloraxis', [tMin tEnd]);
```

Re-interpolate an activation map from the raw electrogram data and subsequently display an activation map:
```matlab
interpData = generateInterpData(userdata, 'lat-map');
drawMap(userdata, 'type', 'act', 'orientation', 'ap', 'data', interpData);
```

Change the fill threshold (default = 10)
```matlab
% Use default value of colorFillThreshold
colorFillThreshold = 10;
drawMap(userdata, 'type', 'act', 'orientation', 'ap', 'data', interpData, 'colorfillthreshold', colorFillThreshold);

% Change colorFillThreshold to 1
colorFillThreshold = 1;
drawMap(userdata, 'type', 'act', 'orientation', 'ap', 'data', interpData, 'colorfillthreshold', colorFillThreshold);
```
<img src="/images/colorFillThreshold-example.png">


### API Links
drawMap.m
getSurfaceData.m
generateInterpData.m

## Conduction velocity
<img src="/images/gallery-cv.png">

OpenEP includes functions to create conduction velocity maps from local activation time maps, which can be displayed using the `drawMap.m` function. In addition, conduction velocity histogram analysis is available via the `cvHistogram.m` function. A triangulation-based method to calculate the gradient of local activation times is employed to calculate conduction velocities independent of wavefront direction.

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

There are now two options. Firstly, `drawMap.m` can be used directly to calculate the conduction velocity data and draw the figure.
```matlab
% Automatic colour scale
drawMap(userdata, 'type', 'cv', 'orientation', 'ap');

% Limit colour scale to physiological values
drawMap(userdata, 'type', 'cv', 'orientation', 'ap', 'colorscale', [0 2]);
```

Alternatively, the `'data'` flag of the `drawMap.m` function can be used, together with `getConductionVelocity.m` which will return the conduction velocity data. This method can be used, for example, to remove non-physiological values before plotting.
```matlab
cvdata = getConductionVelocity(userdata);
cvdata(cvdata>2) = NaN;
drawMap(userdata, 'type', 'cv', 'orientation', 'ap', 'data', cvdata);
```

Examples of all three maps are shown below.
<img src="/images/cv-example.png">

OpenEP can also draw histograms of the conduction velocity.
```matlab
% default settings
cvHistogram(userdata);

% show all the data
cvHistogram(userdata, 'limits', [-Inf Inf]);

% limit to physiological values
cvHistogram(userdata, 'limits', [0 2]);

% adjust the bin width
cvHistogram(userdata, 'limits', [0 2], 'binwidth', 0.01);
```

### API Links
getConductionVelocity.m
drawMap.m
cvHistogram.m


## Data input, storage and batch processing
<img src="/images/gallery-dataimport.png">

The Data Parsing modules serve to convert proprietary electroanatomic mapping export dataformats into the OpenEP data format. There are several ways to use the import functions including in semi-graphical mode and command line mode.

```matlab
% Semi graphical mode
userdata = importcarto_mem()

% Command line mode
studyXmlFile = <path to study XML file> (string)
maptoread = <name of map> (string)
refchannel = 'CS9-CS10';
ecgchannel = 'V1';
savefilename = '~/openep/data/1.mat'
userdata = importcarto_mem(studyXmlFile, 'maptoread', maptoread, 'refchannel', refchannel, 'ecgchannel', ecgchannel, 'savefilename', savefilename)
```

In command line mode, the map to read can also be identified by the number of points in that map, as long as the number of points in the map of interest is unique for that case. For example, for a map containing 1059 points:
```matlab
studyXmlFile = <path to study XML file> (string)
maptoread = 1059
refchannel = 'CS9-CS10';
ecgchannel = 'V1';
savefilename = '~/openep/data/1.mat'
userdata = importcarto_mem(studyXmlFile, 'maptoread', maptoread, 'refchannel', refchannel, 'ecgchannel', ecgchannel, 'savefilename', savefilename)
```

Fully automating import, for example of a set of study files is a more complicated process which requires copy the data from its original location, unzipping the data, identifying the study XML file, identifying the map and performing the input. It is recommended to use `batchImport.m`, modified where necessary, to perform these tasks.

```matlab
batchImport
```

To process multiple OpenEP datasets, an example batch processing script is also provided and can be modified to use any of the OpenEP data analysis modules.

```matlab
batchProcess
```

### API Links
importcarto_mem.m
batchImport.m

## Data interpolation
<img src="/images/">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Earliest/Latest activation
<img src="/images/gallery-earlylateact.png">

OpenEP provides modules for calculating the site of earliest activation and the site of latest activation on a local activation time map. These positions can be used, for example, to measure the chamber total activation or identify the earliest activation site closest to a pacing site. A number of different methods are provided for identifying these sites as outlined below.

To run these examples, load Example 1:
```matlab
load openep_dataset_1.mat;
```

First, we can access the site of earliest activation consistent with the clinical mapping system. This is defined as the earliest point on the interpolated activation map and is accessed as follows:
```matlab
X = getEarliestActivationSite(userdata, 'method', 'clinmap');
```
This OpenEP function call returns the Cartesian co-ordinates of the earliest activating point on the local activation time map.

We can also return the index of the mapping point closest to this activating site, along with the activation time, relative to the reference annotation.
```matlab
[X, ~, iPoint, t] = getEarliestActivationSite(userdata, 'method', 'clinmap');
```

If we are only interested in the earliest activation times recorded on an _actual_ electrogram, rather than interpolated on the activation map, then we can access that, too:
```matlab
[X, surfX, iPoint, t] = getEarliestActivationSite(userdata, 'method', 'ptbased');
```
Here, we have returned two Cartesian co-ordinates, X and surfX. Using `getEarliestActivationSite.m` (or `getLatestActivationSite.m`) with the `'method'` flag set to `'ptbased'` returns the Cartesian co-ordinates of the earliest annotated electrogram (`X`) as well as its surface projection (`surfX`).

Basing the site of earliest/latest activation on the very earliest map point or electrogram point can be error-prone if for example, there is a single point which is annotated too early. OpenEP therefore provides percentile methods where the earliest 2.5th percentile (or latest 2.5th percentile) electrograms or surface mapping points are first identified, then the mean of their x, y and z co-ordinates are calculated. These methods are accessed by setting the `'method'` flag to `'ptbasedprct'` or `'clinmapprct'`. For example:
```matlab
% electrogram based calculation
[X, surfX, iPoint, t] = getEarliestActivationSite(userdata, 'method', 'ptbasedprct');

% map based calculation
[X, surfX, iPoint, t] = getEarliestActivationSite(userdata, 'method', 'clinmapprct');
```

Three final observations:
* Rather than using the interpolated map created by the clinical mapping system, we can also re-interpolate the activation map using OpenEP. This is desireable if, for example, data is being analysed from multiple mapping systems for a single study. The equivalent methods are `'openepmap'` and `'openepmapprct'`.
* The percentile used for the percentile-based methods can be changed from the default of 2.5 by using the `'prct'` flag and passing in a double value.
* Whilst the above discussion has focussed on `getEarliestActivationSite.m` the same parameter/value pairs are used to customise the function `getLatestActivationSite.m`.

### API Links
getEarliestActivationSite.m getLatestActivationSite.m

## Electrogram display/annotation
<img src="/images/gallery-egm.png">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Geometry analysis

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Voltage mapping
<img src="/images/gallery-voltage.png">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Voltage histogram analysis
<img src="/images/gallery-vha.png">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Visualisation

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links
