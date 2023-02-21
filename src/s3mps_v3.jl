using LinearAlgebra
using ITensors

import LinearAlgebra.norm
import LinearAlgebra.tr

####################################################################################################
#
# Finite sized MPS structure
#
####################################################################################################


mutable struct s3mps

    Na::Int      # number of sites
    Nc::Int     # max number of photons mode cavity
    chi::Int    # max bond dimension allowed

    ocen::Int               # site which is the orthonormality center
    gams::Vector{ITensor}   # gam 3-tensors

    is::Vector{Index}       # ITensor physical indices.
    chis::Vector{Index}    # ITensor bond indices (1 is leftmost)

    # constructor
    s3mps(Nc::Int,Na::Int, chi::Int) = new(Nc, Na, chi, 1, Vector{ITensor}(), Vector{Index}(), Vector{Index}())

end
