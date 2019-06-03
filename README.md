[![Build Status](https://travis-ci.org/QuantumWalks/QuWalkEC.jl.svg?branch=master)](https://travis-ci.org/QuantumWalks/QuWalkEC.jl)
[![Coverage Status](https://coveralls.io/repos/github/QuantumWalks/QuWalkEC.jl/badge.svg?branch=master)](https://coveralls.io/github/QuantumWalks/QuWalkEC.jl?branch=master)

**CAUTION!** The developement of the package is suspended. Due to serious error found in the package we recommend not to use it anymore.

# QuWalkEC.jl

## Package description


QuWalkEC.jl is a package for [Julia programming language](https://julialang.org/) which enables checking and finding subgraphs with stationary states for coined quantum walk, see [1]. Those state
usually result in exceptional configuration, ie. hard to find combination of marked elements.

Currently package is under construction.

[1] N. Nahimovs and R. A. M. Santos. "Adjacent vertices can be hard to find by quantum walks." International Conference on Current Trends in Theory and Practice of Informatics. Springer, Cham, 2017.

## Installation

QSWalk requires [LightGraphs package for Julia](https://github.com/JuliaGraphs/LightGraphs.jl). This package will be installed automatically with QuWalkEC installation.

QuWalkEC can be installed directly form GitHub repository.

```julia
Pkg.clone("https://github.com/QuantumWalks/QuWalkEC.jl.git")
```

