[![PyPI](https://img.shields.io/badge/python-3.7-yellow.svg)]()
[![license](https://img.shields.io/github/license/mintproject/FloodSeverityIndex.svg)]()


# FloodSeverityIndex
Flood index based on Gumbel distribution of annual maxima of volumetric flow.

**Table of contents**
* [What is it?](#what)
* [Version Information](#version)
* [User Guide](#quickstart)
* [Requirements](#req)
* [Files in this repository](#files)
* [Contact](#contact)
* [License](#license)

## <a name = "what">What is it?</a>

This Python routine calculates a flood severity index  based on the annual maxima of volumetric flow for the period 1981-2017. The thresholds were estimated from a Gumbel distribution using the methods of L-moments. The severity is based on a 2-yr return period (medium), 5-yr return period (high), and 20-yr return period (severe).

This routine requires data from GloFAS.

## <a name = "version">Version information</a>
* v0.0.1: Support for severity index for South Sudan and Ethiopia.

## <a name = "quickstart">User Guide</a>

Command line implementations:

`python FloodSeverityIndex.py data thresholds bounding_box year`

or

```
docker run -ti mintproject/floodseverityindex:latest bash
python FloodSeverityIndex.py data thresholds bounding_box year
```

where:
* data: Path to the folder containing the GloFAS data. Data should be organized in folders per year.
* thresholds: path to the file containing the  flood threshold  from the Gumbel distribution.
* bounding_box: List of [min_lon,max_lon,min_lat,max_lat]. Note that only South Sudan and Ethiopia are currently supported. Therefore the maximum extent of the box is: [23,48,3,15]
* year: The year of interest. Should be provided as a list for multiple years.

**Note**:
- The outputs are in netcdf format. The  index is a boolean corresponding  to the severity of the flood:  
0: None   
1: Medium (2-yr return period)  
2: high (5-yr return period)  
3: severe (20-yr return period)  

Examples:
`FloodSeverityIndex.py ./ GloFAS_FloodThreshold.nc [23,48,3,15] [2016,2017]`

## <a name = "req">Requirements</a>
Tested under Python 3.7

Package requirements:
* xarray
* numpy

## <a name = "files">Files in this directory</a>

* FloodSeverityIndex.py: Executable
* GloFAS_FloodThreshold.nc: Files containing the thresholds

## <a name = "contact">Contact</a>

Please report issues to <khider@usc.edu>

## <a name ="license"> License </a>

The project is licensed under the Apache v2.0 License. Please refer to the file call license.
