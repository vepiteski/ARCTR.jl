export ST_TROp

function ST_TROp(nlp 		:: AbstractNLPModel,
              	nlpstop 	:: NLPStopping;
				kwargs...
               		)

	return TRARC(nlp,
				  nlpstop;
				  TR = TrustRegion(10.0),
				  c = Combi(hessian_operator, PDataST{eltype(nlp.meta.x0)}, solve_modelST_TR, preprocessST, decreaseGen, TparamsST{eltype(nlp.meta.x0)}()),
				  kwargs...
				  )
end
