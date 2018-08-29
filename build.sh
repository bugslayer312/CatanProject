#!/bin/sh

for dir in build output; do
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
  rm -r $dir/*
done

cd build
cmake -DCMAKE_PREFIX_PATH="$QT_PREFIX_PATH" ../src
make
