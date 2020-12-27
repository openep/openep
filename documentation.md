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

If we don't want it in the menu then we could link to the [API docs](/api/) here.
