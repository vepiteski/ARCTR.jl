fname = :ST_TROp
c = Combi(hessian_operator,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("Template.jl")

fname = :ST_TROpS
c = Combi(hessian_operator,PDataST,solve_modelST_TR,preprocessST,decreaseGen,TparamsST())
include("TemplateS.jl")

