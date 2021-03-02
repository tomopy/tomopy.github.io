## Welcome to the TomoPy benchmarking repository

### Introduction

This website contains all of the benchmarking data for the latest stable version of TomoPy. If you are interested in older versions, go here. 

Benchmarking data is generated for each of TomoPy's reconstruction algorithms. The benchmarks are run using the following image: ![Image](/2021-02-08/peppers/original.png). The algorithms all run with the same amount of noise, the same number of projected angles, and iterations (when applicable). The benchmarks are run 

### Limitations

### Data organization

The benchmarking data is organized as follows:

--date\
----cpu\
------peppers\
--------grad\
--------gridrec\
--------mlem\
--------osem\
--------ospml_hybrid\
--------osmpl_quad\
--------pml_hybrid\
--------sirt\
----gpu\
------peppers\
--------sirt_gpu

### Summary 

|---|Speed|Memory|Quality|
|---|---|---|---|
|grad|---|---|---|
|gridrec|---|---|---|
|mlme|---|---|---|
|osem|---|---|---|
|ospml_hybrid|---|---|---|
|ospml_quad|---|---|---|
|sirt|---|---|---|
|sirt_gpu|---|---|---|




