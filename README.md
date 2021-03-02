## Welcome to the TomoPy benchmarking repository

### Introduction

This website contains all of the benchmarking data for the latest stable version of TomoPy. If you are interested in older versions, go to the [tomopy.github.io repository](https://github.com/tomopy/tomopy.github.io). 

### Data generation

The data is generated using the routines provided [turbo-couscous](https://github.com/tomopy/turbo-couscous). The process consists of three steps. 
1. Data acquisition is simulated by taking projections from this image ![Image](/2021-02-08/peppers/original.png). Noise is also added to make the projections more realistic.
2. The simulated data is then reconstructed using each of the reconstruction algorithms. At the moment, these algorithms are: 
- Gradient descent method (grad)
- Fourier reconstruction algorithm (gridrec)
- Maximum-likelihood expectation-maximization algorithm (mlem)
- Ordered-subset expectation-maximization algorithm (osem)
- Ordered-subset penalized maximum likelihood algorithm with weighted linear and quadratic penalties (ospml_hybrid)
- Ordered-subset penalized maximum likelihood algorithm with quadratic penalties (ospml_quad)
- Penalized maximum likelihood algorithm with weighted linear and quadratic penalties (pml_hybrid)
- Simultaneous algebraic reconstruction technique (sirt)
3. Each of the reconstructed images is then measured against the original image to quantify reconstruction quality. The quality of the reconstructions is plotted as a function of time and saved.

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




