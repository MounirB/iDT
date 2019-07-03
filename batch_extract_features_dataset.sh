#!/usr/bin/env bash

VIDEODIR=./test_sequences
for f in `ls -S ${VIDEODIR}/*.mp4 | tac`
do
  EXT="${f##*.}"
  FILENOEXT="${f%.*}"
  FEATUREFILE=${FILENOEXT}.features.gz
  echo "Processing $f file..."
  ./DenseTracktab $f | gzip > ${FEATUREFILE}
done
