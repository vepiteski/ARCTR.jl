function solve_modelST_TR(X :: PDataST, δ:: Float64)
# cas particulier Steihaug-Toint
    e=1e-6
    n = length(X.g)
    cgtol = max(e, min(0.7, 0.01 * norm(X.g)^(1.0 + X.τ)))

    (d, cg_stats) = cg(X.H, -X.g,
                     atol=cgtol, rtol=0.0,
                     radius=δ,
                     itmax=max(2 * n, 50),
                     verbose=false)

    λ = 0.0  #  dummy for this variant
    return d,λ
end