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

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Data input and storage
<img src="/images/gallery-dataimport.png">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Data interpolation
<img src="/images/">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

## Earliest/Latest activation
<img src="/images/gallery-earlylateact.png">

To run this example, load Example 1:
```matlab
load openep_dataset_1.mat;
```

### API Links

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
