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
* Step 2

Launch Matlab and add the OpenEP directories to the path
  ```matlab
  openEpPath = '~/openep/openep-core';
  addpath(genpath(openEpPath);
  ```
* Step 3

OpenEP is now ready to use!

## Usage

Then perhaps a demo that the installation is working

## API reference

Each OpenEP function is fully documented within the file header. A complete list of the API Reference Documentation is also available here - [API Reference Documentation](/api/).

## Citing OpenEP

OpenEP has been in continually development for the past 10 years during the course of the developers' active electrophysiology research. The OpenEP platform itself was available to selected collaborators throughout this time but was made available to the community at the end of 2020 with the first official release planned for early 2021. At this time a manuscript is under review with Frontiers in Physiology and the full citation will be posted here if accepted.
