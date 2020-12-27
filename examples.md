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

## Conduction velocity
<img src="/images/gallery-cv.png">

## Data input and storage
<img src="/images/gallery-dataimport.png">
Info

## Data interpolation
<img src="/images/">
Info

## Earliest/Latest activation
<img src="/images/gallery-earlylateact.png">
Info

## Electrogram display/annotation
<img src="/images/gallery-egm.png">
Info

## Geometry analysis

Info

## Voltage mapping
<img src="/images/gallery-voltage.png">
Info

## Voltage histogram analysis
<img src="/images/gallery-vha.png">
Info

## Visualisation

Info
