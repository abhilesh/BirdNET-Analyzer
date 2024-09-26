#!/bin/bash

# This wrapper script runs the predictions with parameters for our site

# Sampling site code
# BL -> Beaver Lagoon
# CF -> Central Field
# CP -> Control Pond
SITE="BL"

# Set latitude and longitude based on the site code
case $SITE in
    BL)
        LAT=51.543998
        LONG=-0.340986
        ;;
    CF)
        LAT=51.544133
        LONG=-0.338992
        ;;
    CP)
        LAT=51.544591
        LONG=-0.336433
        ;;
    *)
        echo "Invalid site code"
        exit 1
        ;;
esac

# Set week number for samplings (1-52)
WEEK_NUM=33

# Set locale for species names
LOCALE='en_UK'

INPUT_DIR="/Users/abhilesh/Desktop/BL_20240816"
OUTPUT_DIR="/Users/abhilesh/Desktop/BL_20240816_output"

python analyze.py --i $INPUT_DIR --o $OUTPUT_DIR --week $WEEK_NUM --lat $LAT --lon $LONG --locale $LOCALE --rtype 'table' --combine_results