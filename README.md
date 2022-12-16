    # # # Distribution Statement A. Approved for public release. Distribution unlimited.
    # # # 
    # # # Author:
    # # # Naval Research Laboratory, Marine Meteorology Division
    # # # 
    # # # This program is free software: you can redistribute it and/or modify it under
    # # # the terms of the NRLMMD License included with this program. This program is
    # # # distributed WITHOUT ANY WARRANTY; without even the implied warranty of
    # # # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the included license
    # # # for more details. If you did not receive the license, for more information see:
    # # # https://github.com/U-S-NRL-Marine-Meteorology-Division/


SAR Test Datasets
==========================

This repository contains test datasets for use with the Geolocated Information Processing System.

Please see the 
[GeoIPS Documentation](https://github.com/NRLMMD-GEOIPS/geoips/blob/main/README.md)
for more information on the GeoIPS plugin architecture and base infrastructure.

Sample Dataset Sources
-----------------------

* Synthetic Aperture Radar (SAR) derived windspeed products
    * Original SAR copyright: European Space Agency (ESA)
    * Publisher: NOAA National Centers for Environmental Information, http://www.ncei.noaa.gov/
    * Processed at NOAA/NESDIS/STAR/SOCD, Contains modified Copernicus Sentinel data

System Requirements
---------------------

* geoips >= 1.5.4
* Test data repos contained in $GEOIPS_TESTDATA_DIR for tests to pass.


IF REQUIRED: Install base geoips package
------------------------------------------------------------
SKIP IF YOU HAVE ALREADY INSTALLED BASE GEOIPS ENVIRONMENT 

If GeoIPS Base is not yet installed, follow the
[installation instructions](https://github.com/NRLMMD-GEOIPS/geoips/blob/main/docs/installation.rst)
within the geoips source repo documentation.

Obtain test repo
----------------
```bash
    # Assuming you followed the fully supported installation,
    # using $GEOIPS_TESTDATA_DIR and $GEOIPS_CONFIG_FILE:
    source $GEOIPS_CONFIG_FILE
    git clone $GEOIPS_REPO_URL/test_data_sar $GEOIPS_TESTDATA_DIR/test_data_sar
```

Run sample test scripts
-----------------------
```bash

    # Assuming you followed the fully supported installation,
    # using $GEOIPS_TESTDATA_DIR, $GEOIPS_PACKAGES_DIR, and $GEOIPS_CONFIG_FILE:
    source $GEOIPS_CONFIG_FILE

    # GeoIPS-based test scripts should successfully return 0 if everything is set up properly.
    $GEOIPS/tests/scripts/sar.tc.nrcs.imagery_annotated.sh
```
