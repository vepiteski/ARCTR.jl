fname = :TRMA57Old
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiagOld,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA57
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiag,preprocessMA57,decreaseFact,Tparam())
include("Template.jl")

fname = :TRMA57S
c = Combi(hessian_sparse,PDataMA57,solve_modelTRDiag,preprocessMA57,decreaseFact,Tparam())
include("TemplateS.jl")
