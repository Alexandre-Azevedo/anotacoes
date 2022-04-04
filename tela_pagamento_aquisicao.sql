SELECT DISTINCT
	objeto_fornecedor,
	(SELECT sum(valor_pago) FROM public.tb_pagamentoaquisicao WHERE public.tb_contratofornecedor.id = public.tb_pagamentoaquisicao.id_contratofornecedor)
FROM public.tb_contratofornecedor
INNER JOIN
	public.tb_pagamentoaquisicao on public.tb_contratofornecedor.id = public.tb_pagamentoaquisicao.id_contratofornecedor
GROUP BY
	objeto_fornecedor,
	public.tb_contratofornecedor.id,
	valor_pago
ORDER BY objeto_fornecedor ASC 