#!/bin/sh
swift --version
outputPath=$(dirname $0)/Sources/RunCatLocalization
swift run strings -r ${outputPath}/Resources -o $outputPath
