#!/bin/bash

progs="prime-c prime-java prime-rust prime-luajit prime-mono prime.js
  prime-go prime-haskell prime.jl prime.lua prime-erlang prime.pl
  prime.py prime.rb"

for i in $progs; do
    TIMEFORMAT="%R	$i"
    (time ./$i > /dev/null) 2>&1
done
