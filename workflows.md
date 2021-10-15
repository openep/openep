---
title: Workflows
subtitle:

layout: page
---

# Introduction

An OpenEP WorkFlow consists of a series of OpenEP commands in a script working toward a common 
goal. A simple WorkFlow example is given below for experiments on a single case. More complicated 
WorkFlow examples iterate over multiple cases. The WorkFlow example provided can be run using the 
[OpenEP Examples]( https://github.com/openep/openep-examples). A Community of OpenEP WorkFlows 
is provided via Zenodo at [OpenEP WorkFlow Community](
https://zenodo.org/communities/openepworkflows).

# Anatomy of a WorkFlow File 

OpenEP WorkFlow files contain the following sections: 

### Title

The first line of the file should be “% OpenEP WorkFlow File v1.0.0” 

### Meta-data

A meta-data section follows the title, indicated by `“% META-DATA”` and containing information on Title, 
Description, Target, Author, Date and License. 

### Dependencies

A dependencies section follows the meta-data, indicated by `“% DEPENDENCIES”` and contains a list of 
URIs to all additional code files necessary to run the WorkFlow. At a minimum, the dependencies section 
will contain the [core OpenEP architecture](https://github.com/openep/openep-core) and additionally the 
[OpenEP examples](https://github.com/openep/openep-examples) if required. If the OpenEP examples are 
not included as a dependency, an alternative URI to appropriate source data should be provided. 

### Parameters

A parameter section follows the dependencies section, indicated by `“% PARAMETERS”` and contains 
variable defintions that will be used throughout the WorkFlow. It is good practice to include any variables in 
here which can be modified to allow the WorkFlow to function differently; or to function under different 
conditions (for example, a low voltage threshold in the example given). 

### Code

A code section follows the parameters, indicated by `“% WORKFLOW”` and contains the documented code 
for the WorkFlow. 

# WorkFlow Example: Creating a Voltage Map 

This WorkFlow is available through the OpenEP Zenodo Community via a [DOI](
https://doi.org/10.5281/zenodo.5547944) 

```
% OpenEP WorkFlow File v1.0.0

% META-DATA
% Title: Creating a Voltage Map
% Description: Plot a voltage map and calculate a low voltage area
% Target: openep-examples
% Author: Steven Williams
% Date: 04/10/2021
% License: CC BY 4.0

% DEPENDENCIES
% https://github.com/openep/openep-core
% https://github.com/openep/openep-examples

% PARAMETERS
LOWVOLTAGETHRESHOLD = 0.5; %mV

% WORKFLOW

% load data
load openep_dataset_1.mat

% Plot voltage map
% Specify the type of map to be bipolar voltage ('bip').
% Activation ('act') and unipolar ('uni') are also possible.
% Define to colorbar to range from 0 to LOWVOLTAGETHRESHOLD.
% Set the orientation to be PA.
% AP is also possible. Other orientations are not yet implemented.
figure
drawMap(userdata, 'type', 'bip', 'coloraxis', [0 LOWVOLTAGETHRESHOLD], 'orientation', 'PA');

% calculate low voltage area
lva = getLowVoltageArea(userdata, 'threshold', [0 LOWVOLTAGETHRESHOLD]);

% output
disp(['The low voltage area is ' num2str(lva) 'cm^2']);
```

# Licensing WorkFlow Files 

WorkFlows should be licensed appropriately to enable creators to retain copyright whilst allowing the 
community to make use of the WorkFlow. To this end, WorkFlows should be licensed with one of the 
Creative Commons licenses which allow derivative works. Decisions on whether the license should be 
ShareAlike (requiring derivative works to be made available under the same license terms) or 
NonCommercial (allowing only non-commercial use) rests with the creator. Of all the Creative Commons 
licenses, only Attribution-NoDerivs and Attribution-NonCommercial-NoDerivs are therefore not suitable. 
The remaining licenses (CC BY, CC BY-SA, CC BY-NC and CC BY-NC-SA) are all suitable. Further
information is available here https://creativecommons.org/licenses.

# Sharing WorkFlowFiles 

It is important to the community to share both WorkFlows as well as the OpenEP code. This will enable 
entry into OpenEP, further research using OpenEP and facilitate collaboration between clinical/academic 
centres. OpenEP WorkFlows are shared through the OpenEP Zenodo community page, hosted here: 
https://zenodo.org/communities/openepworkflows . Publishing your WorkFlow through the OpenEP 
Community will also result in the creation of a unique document identifier (DOI) which you can reference 
in your work. 
OpenEP WorkFlow submissions to the Community should contain a single file as described in “Anatomy of 
a WorkFlow File” above. Where additional code is necessary, for example for data processing, this should 
be made publicly available and referred to in the Dependencies section. Options for making these files 
publicly available include contributing the functionality to OpenEP or linking to the dependency in the 
Dependencies section of the WorkFlow file. 
If you wish to share your OpenEP WorkFlows, for example prior to publication or conference presentation, 
please make sure to follow these guidelines before submitting your WorkFlow at 
https://zenodo.org/deposit/new?c=openepworkflows : 

* Structure. The OpenEP WorkFLow file should be structured as described on the OpenEP Website. 
The current structure version is v1.0.0  
* Metadata. The OpenEP Workflow file should contain a meta data section, as described on the 
OpenEP Website 
* Dependencies. URIs for any dependencies of the WorkFlow should be included in the dependencies 
section 
* Licence. The OpenEP Workflow should be provided using an Attribution Creative Commons licence 
which allows derivative work (CC BY, CC BY-SA, CC BY-NC, CC BY-NC-SA). Note that the 
specific choice of license is at the discretion of the creator 
* Functionality. The OpenEP Workflow should run without errors using either the OpenEP Examples, 
or the Target dataset specified in meta-data. 
* Documentation. Clear documentation should be provided within the OpenEP Workflow file in the 
form of code comments. 

