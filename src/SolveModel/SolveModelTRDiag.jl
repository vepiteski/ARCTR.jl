function solve_modelTRDiag(PData :: PDataFact, δ:: Float64)
    # Solve the TR subproblem once diagonalized into Δ using the L₂ norm

    d̃,λ = MoreSorensonTR(PData.success, PData.Δ, PData.λ, PData.g̃, δ)

    PData.λ = λ

    # Transform back d̃ into d
    d = AInv(PData,d̃)  

    #try assert((PData.g̃ + 0.5*PData.Δ .* d̃)⋅d̃ <= 0.0)  catch  @bp  end

    return d, λ
end
