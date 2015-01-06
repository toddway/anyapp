#!/bin/sh

echo $(git describe HEAD) | awk -F '_' '{print $1}'
