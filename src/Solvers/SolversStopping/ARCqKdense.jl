export ARCqKdense

function ARCqKdense(nlp 		:: AbstractNLPModel,
              	nlpstop 	:: NLPStopping;
				kwargs...
               		)

	return TRARC2(nlp,
				  nlpstop;
				  TR = TrustRegion(10.0),
				  c = Combi(hessian_dense,PDataK,solve_modelKARC,preprocessKARC,decreaseKARC,TparamsKARC()),
				  kwargs...
				  )
end