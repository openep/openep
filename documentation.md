---
title: Documentation
subtitle: >-
  Documentation for getting started with OpenEP

layout: page
---

The current implementation of OpenEP is a Matlab library which depends upon access to the Matlab executable to run. Once you have Matlab installed on your system, download the OpenEP source code, or clone from Github and add the entire directory to your Matlab path. Then you are ready to begin exploring OpenEP.

## Prerequisites

Matlab R2020a, or later.

## Installation

OpenEP installation is as simple as downloading the source code and adding to the Matlab path. Depending on your experience you can simply download the code [here](https://github.com/openep/openep-core/), or you can install using version control as outlined below.

* Step 1

Grab the source code using git
```bash
mkdir ~/openep
cd ~/openep
git clone https://github.com/openep/openep-core.git
```

Checkout the develop branch
```bash
git checkout develop
```
* Step 2

Launch Matlab and add the OpenEP directories to the path
  ```matlab
  openEpPath = '~/openep/openep-core';
  addpath(genpath(openEpPath));
  ```
* Step 3

OpenEP is now ready to use!

## Usage

To test out your new OpenEP installation, try working with the OpenEP Example Datasets:
```
cd ~/openep
git clone https://github.com/openep/openep-examples.git
```
Make sure the `openep-examples` directory is added to your Matlab path.
```matlab
openEpExPath = '~/openep/openep-examples'
addpath(genpath(openEpExPath));
```
You shoud now be able to try the OpenEP demo:
```matlab
openep_demo
```

If everything is working correctly you should see a figure similar to the following:
<img src="/images/openep-demo.png">
(Note however that there is currently a bug where the colormap of the colorbar in the conduction velocity panel is not correct).

## API reference

Each OpenEP function is fully documented within the file header. A complete list of the API Reference Documentation is also available here - [API Reference Documentation](/api/).

## Data format

The data format for OpenEP is also documented here - [Data Reference Documentation](/data/).

## Citing OpenEP

If you use OpenEP in your research, please cite the Frontiers in Physiology publication together with the Zenodo DOI for the particular OpenEP release that you use

### Frontiers in Physiology Publication

Williams SE, Roney CH, Connolly A, Sim I, Whitaker J, O’Hare D, Kotadia I, O’Neill L, Corrado C, Bishop M, Niederer SA, Wright M, O’Neill M and Linton NWF (2021) OpenEP: A Cross-Platform Electroanatomic Mapping Data Format and Analysis Platform for Electrophysiology Research. Front. Physiol. 12:646023. doi: 10.3389/fphys.2021.646023

### OpenEP Releases (Zenodo)

Williams SE and Linton NWF (DATE). OpenEP/openep-core: vX.X.XX (Version vX.X.XX). Zenodo. https://doi.org/10.5281/zenodo.4471318

Note that the DOI above always resolves to the latest OpenEP release, but the Date and Version Numbers need to be updated.

