function preprocessSpectral(H ,g, params::Tparams,n1,n2)
    #global V, D, rho, ncomp
    
    DiagD, V = eig(H)

    l_m, = findmin(DiagD)
    g̃ = V'*g
    n_g = norm(g)
    ɛ = 1.0e-10
    λ = max(-l_m,0.0)

    return  PDataSpectral(V,DiagD,g̃,λ,true,true)
end


function TtildeInv(X :: PDataSpectral, d̃ ::  Array{Float64,1})
    return X.V * d̃
end

function reconstructH(X :: PDataSpectral)
    return X.V*diagm(X.Δ)*X.V'
end
