# # # Distribution Statement A. Approved for public release. Distribution unlimited.
# # # 
# # # Author:
# # # Naval Research Laboratory, Marine Meteorology Division
# # # 
# # # This program is free software:
# # # you can redistribute it and/or modify it under the terms
# # # of the NRLMMD License included with this program.
# # # 
# # # If you did not receive the license, see
# # # https://github.com/U-S-NRL-Marine-Meteorology-Division/
# # # for more information.
# # # 
# # # This program is distributed WITHOUT ANY WARRANTY;
# # # without even the implied warranty of MERCHANTABILITY
# # # or FITNESS FOR A PARTICULAR PURPOSE.
# # # See the included license for more details.

#!/bin/bash

bg_data_path=$GEOIPS_BASEDIR/test_data/test_data_sar/bg_data/
bg_data_time='ahi_20211028_2020'
geo_tgz_path=$bg_data_path/${bg_data_time}.tgz
geo_data_path=$bg_data_path/$bg_data_time

# Ensure tgz file is tar -xzvf'ed
    date -u
    if ! ls $geo_data_path/*.DAT >& /dev/null; then
        echo "tar -xzvf $geo_tgz_path -C $bg_data_path"
        tar -xzvf $geo_tgz_path -C $bg_data_path
    fi

# Ensure data files are bunzipped, after tar -xzvf ing
    date -u
    if ls $geo_data_path/*.bz2 >& /dev/null; then
        echo "bunzip2 $geo_data_path/*.bz2"
        bunzip2 -f $geo_data_path/*.bz2
    fi

# Just some notes on how to look for ABI/AHI test datasets in AWS -
# not actually used, since the time didn't work out, but included just for reference!

# bg_data_time='ahi_20181025_2030'
# date +%j --date="2018/10/25"
# # 298
# mkdir -p $geo_data_path
# rclone ls publicAWS:noaa-goes16/ABI-L1b-RadF/2018/298/20 | grep 2030
# # OR_ABI-L1b-RadF-M3C03_G16_s20182982030375_e20182982041142_c20182982041189.nc # ABI Vis
# # OR_ABI-L1b-RadF-M3C14_G16_s20182982030375_e20182982041142_c20182982041216.nc # ABI IR
# rclone copy publicAWS:noaa-goes16/ABI-L1b-RadF/2018/298/20/OR_ABI-L1b-RadF-M3C03_G16_s20182982030375_e20182982041142_c20182982041189.nc $geo_data_path
# rclone copy publicAWS:noaa-goes16/ABI-L1b-RadF/2018/298/20/OR_ABI-L1b-RadF-M3C14_G16_s20182982030375_e20182982041142_c20182982041216.nc $geo_data_path
#
# cd $bg_data_path
# tar -czvf $bg_data_time.tgz $bg_data_time

