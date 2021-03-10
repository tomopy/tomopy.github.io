## Welcome to the TomoPy benchmarking repository

### Introduction

This website contains all of the benchmarking data for the latest stable version of TomoPy. If you are interested in older versions, go to the [tomopy.github.io](https://github.com/tomopy/tomopy.github.io) repository. These benchmarks are designed to give the reader the information they need to make an informed decision about which of TomoPy's reconstruction algorithms are right for their particular project. To accomplish that, these benchmarks contain results pertaining to the quality and speed of each reconstruction algorithm as well as the types of artifacts that may occur when using each of the algorithms. 

### Data generation

The data is generated using the routines provided by the [turbo-couscous](https://github.com/tomopy/turbo-couscous) repository. The process consists of three steps. 
1. Data acquisition is simulated by taking projections from this image ![Image](/2021-02-08/peppers/original.png). Noise is also added to make the projections more realistic.
2. The simulated data is then reconstructed using each of the reconstruction algorithms. At the moment, these algorithms are: 
- [Gridrec](/docs/gridrec.md)
- [MLEM](/docs/mlem.md)
- [OSEM](/docs/osem.md)
- [OSPML Hybrid](/docs/osmpl_hybrid.md)
- [OSMPL Quad](/docs/ospml_quad.md)
- [PML Hybrid](/docs/pml_hybrid.md)
- [SIRT](/docs/sirt.md)
- [SIRT_GPU](/docs/sirt_gpu.md)

To view the documentation for these functions, go to the TomoPy [readthedocs](https://tomopy.readthedocs.io/en/latest/api/tomopy.recon.algorithm.html) website.
3. Each of the reconstructed images is then measured against the original image to quantify reconstruction quality. The quality of the reconstructions is plotted as a function of time and saved.

### Limitations

While they are able to account for noise, these benchmarks currently do not account for the possibility of several classes of artifacts that may occur in realistic conditions. These include
- Sample-based artifacts: 
  - Motion artifacts: If part of the sample is moving during data collection, there can be blurriness in the reconstruction.
  - Out of field artifact: Dark streaks can appear when part of the sample is outside the field-of-view of the detector.
- Physics-based artifacts
  - Beam hardening: If an X-ray is polychromatic, materials with a high atomic number can absorb the low-energy X-rays more than the high-energy X-rays.
  - Photon starvation: When there are regions of relatively high attenuation in a sample, dark streaks can form as a result of few photons reaching the detector. 
- Hardware-based artifacts:
  - Ring artifact: If a detector is improperly calibrated of otherwise faulty, a faint ring will appear in the reconstruction.

### Data organization

The benchmarking data is organized as follows:

- date
  - cpu
    - peppers
      - gridrec
      - mlem\
      - osem\
      - ospml_hybrid
      - osmpl_quad
      - pml_hybrid
      - sirt
  - gpu
    - peppers
      - sirt_gpu





