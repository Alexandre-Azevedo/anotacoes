SELECT DISTINCT
	objeto_cliente,
	(SELECT sum(valor_pago) FROM public.tb_pagamentofaturamento WHERE public.tb_contratocliente.id = public.tb_pagamentofaturamento.id_contratocliente)
FROM public.tb_contratocliente
INNER JOIN
	public.tb_pagamentofaturamento on public.tb_contratocliente.id = public.tb_pagamentofaturamento.id_contratocliente
GROUP BY
	objeto_cliente,
	public.tb_contratocliente.id,
	valor_pago
ORDER BY objeto_cliente ASC 