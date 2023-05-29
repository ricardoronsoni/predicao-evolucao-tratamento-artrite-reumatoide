update apac.artrite_reumatoide_base set
	nome_medicamento = case 
		when procedimento = '0604320140' then 'ABATACEPTE 125 MG INJETÁVEL (POR SERINGA PREENCHIDA)'
		when procedimento = '0604320124' then 'ABATACEPTE 250 MG INJETÁVEL (POR FRASCO AMPOLA).'
		when procedimento = '0604380011' then 'ADALIMUMABE 40 MG INJETAVEL (POR SERINGA PREENCHIDA)'
		when procedimento = '0604380127' then 'ADALIMUMABE 40 MG INJETÁVEL ( POR SERINGA PREENCHIDA)( BIOSSIMILAR A)'
		when procedimento = '0604380135' then 'ADALIMUMABE 40 MG INJETÁVEL (POR SERINGA PREENCHIDA) (BIOSSIMILAR B)'
		when procedimento = '0604530013' then 'AZATIOPRINA 50 MG (POR COMPRIMIDO)'
		when procedimento = '0604320175' then 'BARICITINIBE 2MG (POR COMPRIMIDO)'
		when procedimento = '0604320183' then 'BARICITINIBE 4MG (POR COMPRIMIDO)'
		when procedimento = '0604380070' then 'CERTOLIZUMABE PEGOL 200 MG/ML INJETÁVEL (POR SERINGA PREENCHIDA)'
		when procedimento = '0604090013' then 'CICLOFOSFAMIDA 50 MG (POR DRAGEA)'
		when procedimento = '0604340044' then 'CICLOSPORINA 100 MG (POR CAPSULA)'
		when procedimento = '0604340052' then 'CICLOSPORINA 100 MG/ML SOLUCAO ORAL (POR FRASCO DE 50 ML)'
		when procedimento = '0604340028' then 'CICLOSPORINA 25 MG (POR CAPSULA)'
		when procedimento = '0604340036' then 'CICLOSPORINA 50 MG (POR CAPSULA)'
		when procedimento = '0604080018' then 'CLOROQUINA 150 MG (POR COMPRIMIDO)'
		when procedimento = '0604380020' then 'ETANERCEPTE 25 MG INJETÁVEL (POR FRASCO-AMPOLA OU SERINGA PREENCHIDA)'
		when procedimento = '0604380100' then 'ETANERCEPTE 50 MG INJETÁVEL (POR FRASCO-AMPOLA OU SERINGA PREENCHIDA)(BIOSSIMILAR A)'
		when procedimento = '0604380038' then 'ETANERCEPTE 50MG INJETAVEL (POR FRASCO-AMPOLA OU SERINGA PREENCHIDA)(ORIGINADOR)'
		when procedimento = '0604380089' then 'GOLIMUMABE 50 MG INJETÁVEL (POR SERINGA PREENCHIDA'
		when procedimento = '0604080034' then 'HIDROXICLOROQUINA 200 MG (POR COMPRIMIDO)'
		when procedimento = '0604080026' then 'HIDROXICLOROQUINA 400 MG (POR COMPRIMIDO)'
		when procedimento = '0604380119' then 'INFLIXIMABE 10 MG /ML INJETÁVEL (POR FRASCO-AMPOLA COM 10 ML) (BIOSSIMILAR A)'
		when procedimento = '0604380046' then 'INFLIXIMABE 10 MG/ML INJETAVEL (POR FRASCO-AMPOLA COM 10 ML)'
		when procedimento = '0604320043' then 'LEFLUNOMIDA 20 MG (POR COMPRIMIDO)'
		when procedimento = '0604530021' then 'METOTREXATO 2,5 MG (POR COMPRIMIDO)'
		when procedimento = '0604530030' then 'METOTREXATO 25 MG/ML INJETAVEL (POR AMPOLA DE 2 ML)'
		when procedimento = '0604720017' then 'NAPROXENO 250 MG (POR COMPRIMIDO)'
		when procedimento = '0604720025' then 'NAPROXENO 500 MG (POR COMPRIMIDO)'
		when procedimento = '0604680040' then 'RITUXIMABE 500 MG INJETÁVEL (POR FRASCO AMPOLA DE 50 ML(BIOSSIMILAR B)'
		when procedimento = '0604680031' then 'RITUXIMABE 500 MG INJETÁVEL (POR FRASCO- AMPOLA DE 5O ML ) (BIOSSIMILAR A)'
		when procedimento = '0604680023' then 'RITUXIMABE 500 MG INJETÁVEL (POR FRASCO-AMPOLA DE 50 ML) (ORIGINADOR)'
		when procedimento = '0604010095' then 'SULFASSALAZINA 500 MG (POR COMPRIMIDO)'
		when procedimento = '0604690010' then 'TOCILIZUMABE 20 MG/ML INJETAVEL (POR FRASCO-AMPOLA DE 4 ML)'
		when procedimento = '0604320159' then 'TOFACITINIBE 5 MG (POR COMPRIMIDO)'
		when procedimento = '0604320191' then 'UPADACITINIBE 15 MG (POR COMPRIMIDO REVESTIDO DE LIBERAÇÃO PROLONGADA)'
		else '-1' 
	end,		
	principio_ativo = case
		when procedimento = '0604320140' or procedimento = '0604320124' then 'ABATACEPTE'
		when procedimento = '0604380011' or procedimento = '0604380127' or procedimento = '0604380135' then 'ADALIMUMABE'
		when procedimento = '0604530013' then 'AZATIOPRINA'
		when procedimento = '0604320175' or procedimento = '0604320183' then 'BARICITINIBE'
		when procedimento = '0604380070' then 'CERTOLIZUMABE PEGOL'
		when procedimento = '0604090013' then 'CICLOFOSFAMIDA'
		when procedimento = '0604340044' or procedimento = '0604340052' or procedimento = '0604340028' or procedimento = '0604340036' then 'CICLOSPORINA'
		when procedimento = '0604080018' then 'CLOROQUINA'
		when procedimento = '0604380020' or procedimento = '0604380100' or procedimento = '0604380038' then 'ETANERCEPTE'
		when procedimento = '0604380089' then 'GOLIMUMABE'
		when procedimento = '0604080034' or procedimento = '0604080026' then 'HIDROXICLOROQUINA'
		when procedimento = '0604380119' or procedimento = '0604380046' then 'INFLIXIMABE'
		when procedimento = '0604320043' then 'LEFLUNOMIDA'
		when procedimento = '0604530021' or procedimento = '0604530030' then 'METOTREXATO'
		when procedimento = '0604720017' or procedimento = '0604720025' then 'NAPROXENO'
		when procedimento = '0604680040' or procedimento = '0604680031' or procedimento = '0604680023' then 'RITUXIMABE'
		when procedimento = '0604010095' then 'SULFASSALAZINA'
		when procedimento = '0604690010' then 'TOCILIZUMABE'
		when procedimento = '0604320159' then 'TOFACITINIBE'
		when procedimento = '0604320191' then 'UPADACITINIBE'
		else '-1'
	end;

update apac.artrite_reumatoide_base set
	categoria_medicamento = case 
		when principio_ativo = 'ABATACEPTE' then 'BIOLÓGICO NÃO ANTI-TNF'
		when principio_ativo = 'ADALIMUMABE' then 'BIOLÓGICO ANTI-TNF'
		when principio_ativo = 'AZATIOPRINA' then 'IMUNOSSUPRESSOR'
		when principio_ativo = 'BARICITINIBE' then 'MMCDSAE'
		when principio_ativo = 'CERTOLIZUMABE PEGOL' then 'BIOLÓGICO ANTI-TNF'
		when principio_ativo = 'CICLOFOSFAMIDA' then 'IMUNOSSUPRESSOR'
		when principio_ativo = 'CICLOSPORINA' then 'IMUNOSSUPRESSOR'
		when principio_ativo = 'CLOROQUINA' then 'MMCD'
		when principio_ativo = 'ETANERCEPTE' then 'BIOLÓGICO ANTI-TNF'
		when principio_ativo = 'GOLIMUMABE' then 'BIOLÓGICO ANTI-TNF'
		when principio_ativo = 'HIDROXICLOROQUINA' then 'MMCD'
		when principio_ativo = 'INFLIXIMABE' then 'BIOLÓGICO ANTI-TNF'
		when principio_ativo = 'LEFLUNOMIDA' then 'MMCD'
		when principio_ativo = 'METOTREXATO' then 'MMCD'
		when principio_ativo = 'NAPROXENO' then 'AINE'
		when principio_ativo = 'RITUXIMABE' then 'BIOLÓGICO NÃO ANTI-TNF'
		when principio_ativo = 'SULFASSALAZINA' then 'MMCD'
		when principio_ativo = 'TOCILIZUMABE' then 'BIOLÓGICO NÃO ANTI-TNF'
		when principio_ativo = 'TOFACITINIBE' then 'MMCDSAE'
		when principio_ativo = 'UPADACITINIBE' then 'MMCDSAE'
		else '-1'
	end;


   
--Fazer o insert
insert into apac.artrite_reumatoide_paciente (cns_paciente, cid, idade_paciente_inicio_tto, sexo_paciente, municipio_residencia_paciente, sigla_uf_dispensacao, codigo_municipio_dispensacao, cnes_dispensacao, cnes_solicitante) 
	select 
		distinct cns_paciente,
		min(cid),
		min(idade_paciente),
		min(sexo_paciente),
		min(municipio_residencia_paciente),
		min(sigla_uf_dispensacao),
		min(codigo_municipio_dispensacao),
		min(cnes_dispensacao),
		min(cnes_solicitante)
	from apac.artrite_reumatoide_base arb
	where cns_paciente is not null
	group by cns_paciente;
	

update apac.artrite_reumatoide_paciente arp set 
competencia_inicio_nova_terapia = (
	select min(arb.competencia_dispensacao)
	    from apac.artrite_reumatoide_base arb
	    where 
	    	arp.cns_paciente = arb.cns_paciente
	    	and arb.principio_ativo in ('BARICITINIBE','TOFACITINIBE','UPADACITINIBE','ADALIMUMABE','CERTOLIZUMABE PEGOL','ETANERCEPTE',
					'GOLIMUMABE','INFLIXIMABE','ABATACEPTE','RITUXIMABE','TOCILIZUMABE')
);

--meses_tto
update apac.artrite_reumatoide_paciente arp set 
meses_tto_leflunomida = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'LEFLUNOMIDA'
		and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ),
meses_tto_hidroxicloroquina = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'HIDROXICLOROQUINA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ), 
meses_tto_metotrexato = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'METOTREXATO'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ),
meses_tto_azatioprina = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'AZATIOPRINA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ),
meses_tto_ciclosporina = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'CICLOSPORINA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ),
meses_tto_ciclofosfamida = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'CICLOFOSFAMIDA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
	),
meses_tto_cloroquina = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'CLOROQUINA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
	),
meses_tto_naproxeno = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'NAPROXENO'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
	),
meses_tto_sulfassalazina = (
	select count(distinct arb.competencia_dispensacao)
    from apac.artrite_reumatoide_base arb
    where 
    	arp.cns_paciente = arb.cns_paciente
    	and arb.principio_ativo = 'SULFASSALAZINA'
    	and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
	),
meses_tto_mtx_hcq = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo  = 'METOTREXATO'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and (principio_ativo = 'HIDROXICLOROQUINA' or principio_ativo = 'CLOROQUINA')
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_mtx_ssz = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo = 'METOTREXATO'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and principio_ativo = 'SULFASSALAZINA'
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_ssz_hcq = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo = 'SULFASSALAZINA'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and (principio_ativo = 'HIDROXICLOROQUINA' or principio_ativo = 'CLOROQUINA')
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_lef_mtx = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo = 'LEFLUNOMIDA'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and principio_ativo = 'METOTREXATO'
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_lef_hcq = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo = 'LEFLUNOMIDA'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and (principio_ativo = 'HIDROXICLOROQUINA' or principio_ativo = 'CLOROQUINA')
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_lef_ssz = (
	select count(distinct competencia)
	from (
		select competencia_dispensacao as competencia
		from apac.artrite_reumatoide_base arb
		where 
			arp.cns_paciente = arb.cns_paciente
			and principio_ativo = 'LEFLUNOMIDA'
			and competencia_dispensacao in (
				select competencia_dispensacao
				from apac.artrite_reumatoide_base arb2
				where 
					arp.cns_paciente = arb2.cns_paciente
					and principio_ativo = 'SULFASSALAZINA'
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
				)
		) base
	),
meses_tto_mtx_ssz_hcq = (
	select count(*)
	from (
		select 
			arb.cns_paciente,
			competencia_dispensacao,
			count(distinct principio_ativo)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
			and arb.principio_ativo in ('METOTREXATO','SULFASSALAZINA','HIDROXICLOROQUINA','CLOROQUINA')
			and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
		group by 
			arb.cns_paciente,
			competencia_dispensacao
		having count(distinct principio_ativo) = 3
		) base
	),
meses_tto_mmcd_duplo = (
	select count(*)
	from (
		select 
			arb.cns_paciente,
			competencia_dispensacao,
			count(distinct principio_ativo)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
			and arb.categoria_medicamento = 'MMCD'
			and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
		group by 
			arb.cns_paciente,
			competencia_dispensacao
		having count(distinct principio_ativo) = 2) base 
	),
meses_tto_mmcd_triplo = (
	select count(*)
	from (
		select 
			arb.cns_paciente,
			competencia_dispensacao,
			count(distinct principio_ativo)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
			and arb.categoria_medicamento = 'MMCD'
			and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
		group by 
			arb.cns_paciente,
			competencia_dispensacao
		having count(distinct principio_ativo) = 3) base2 
	);

 
 --atualizar os campos de uso de medicamento
update apac.artrite_reumatoide_paciente arp set 
	uso_leflunomida = case when meses_tto_leflunomida > 0 then true else false end,
	uso_hidroxicloroquina = case when meses_tto_hidroxicloroquina > 0 then true else false end,
	uso_metotrexato = case when meses_tto_metotrexato > 0 then true else false end,
	uso_azatioprina = case when meses_tto_azatioprina > 0 then true else false end,
	uso_ciclosporina = case when meses_tto_ciclosporina > 0 then true else false end,
	uso_ciclofosfamida = case when meses_tto_ciclofosfamida > 0 then true else false end,
	uso_naproxeno = case when meses_tto_naproxeno > 0 then true else false end,
	uso_sulfassalazina = case when meses_tto_sulfassalazina > 0 then true else false end,
	uso_cloroquina = case when meses_tto_cloroquina > 0 then true else false end,
	uso_mtx_hcq = case when meses_tto_mtx_hcq > 0 then true else false end,
	uso_mtx_ssz = case when meses_tto_mtx_ssz > 0 then true else false end,
	uso_ssz_hcq = case when meses_tto_ssz_hcq > 0 then true else false end,
	uso_lef_mtx = case when meses_tto_lef_mtx > 0 then true else false end,
	uso_lef_hcq = case when meses_tto_lef_hcq > 0 then true else false end,
	uso_lef_ssz = case when meses_tto_lef_ssz > 0 then true else false end,
	uso_mtx_ssz_hcq = case when meses_tto_mtx_ssz_hcq > 0 then true else false end,
	uso_tto_mmcd_duplo = case when meses_tto_mmcd_duplo > 0 then true else false end,
	uso_tto_mmcd_triplo = case when meses_tto_mmcd_triplo > 0 then true else false end;
	


-- atualizar mmcd_distintos
update apac.artrite_reumatoide_paciente arp set 
meses_mmcd = (
	select count(distinct arb.competencia_dispensacao)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
	    	and arb.categoria_medicamento = 'MMCD'
			and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
),
mmcd_distintos = (
	select count(distinct arb.principio_ativo)
	from apac.artrite_reumatoide_base arb
	where
		arp.cns_paciente = arb.cns_paciente
    	and arb.categoria_medicamento = 'MMCD'
		and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
    ),
competencia_inicio = (
	select cast(to_char(min(arb.competencia_dispensacao), 'YYYYMM') as numeric)
	from apac.artrite_reumatoide_base arb
	where
		arp.cns_paciente = arb.cns_paciente
    ),
meses_total_tto = (
	select case 
		when (extract(years from age(max(arb.competencia_dispensacao), min(arb.competencia_dispensacao))) * 12 
			+ extract(months from age(max(arb.competencia_dispensacao), min(arb.competencia_dispensacao)))) is null
		then 0 else (extract(years from age(max(arb.competencia_dispensacao), min(arb.competencia_dispensacao))) * 12 
			+ extract(months from age(max(arb.competencia_dispensacao), min(arb.competencia_dispensacao))))
		end meses_entre_datas
	from apac.artrite_reumatoide_base arb
	where
		arp.cns_paciente = arb.cns_paciente
		and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end
	),
paciente_novo = case
	when (
		select count(*)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
			and arb.competencia_dispensacao <= to_date('2018-06-01', 'YYYY-MM-DD') 
	    ) = 0
	then true 
	else false 
end,
maior_gap_mmcd = (
	select case when max(periodo_sem_tratamento) is not null then max(periodo_sem_tratamento) else 0 end
	from (
        select 
            cns_paciente, 
            competencia_dispensacao data_inicio,
            lead(competencia_dispensacao) over (partition  by cns_paciente order by competencia_dispensacao) AS data_termino,
            date_part('year', age(date_trunc('month', lead(competencia_dispensacao) over (partition  by cns_paciente order by competencia_dispensacao)), date_trunc('month', competencia_dispensacao))) * 12 +
            date_part('month', age(date_trunc('month', lead(competencia_dispensacao) over (partition  by cns_paciente order by competencia_dispensacao)), date_trunc('month', competencia_dispensacao)))
            as periodo_sem_tratamento
        from apac.artrite_reumatoide_base arb
        where 
            arp.cns_paciente = arb.cns_paciente
            and competencia_dispensacao >= (
            	select min(arb.competencia_dispensacao)
				from apac.artrite_reumatoide_base arb
				where
					arp.cns_paciente = arb.cns_paciente
					and arb.categoria_medicamento = 'MMCD'
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end)
            and competencia_dispensacao <= (
	            select max(arb.competencia_dispensacao)
				from apac.artrite_reumatoide_base arb
				where
					arp.cns_paciente = arb.cns_paciente
					and arb.categoria_medicamento = 'MMCD'
					and arb.competencia_dispensacao < case when competencia_inicio_nova_terapia is null then current_date else competencia_inicio_nova_terapia end)
	    ) as base
	where 
	    data_termino is not null),
nova_terapia_antes_seis_meses_mmcd = case
	when (
		select count(*)
		from apac.artrite_reumatoide_base arb
		where
			arp.cns_paciente = arb.cns_paciente
			and arb.principio_ativo in ('BARICITINIBE','TOFACITINIBE','UPADACITINIBE','ADALIMUMABE','CERTOLIZUMABE PEGOL','ETANERCEPTE',
					'GOLIMUMABE','INFLIXIMABE','ABATACEPTE','RITUXIMABE','TOCILIZUMABE')
			and arb.competencia_dispensacao < (
				select min(competencia_dispensacao) + INTERVAL '6 months'
				from apac.artrite_reumatoide_base arb
				where arp.cns_paciente = arb.cns_paciente
				)
	    ) > 0
	then true 
	else false 
end,
nova_terapia = case
	when competencia_inicio_nova_terapia is not null then true else false
end;



update apac.artrite_reumatoide_paciente arp set
regiao_residencia_paciente = (
	select gu.regiao_uf  
	from geral.uf gu
	where arp.sigla_uf_dispensacao
	= gu.sigla_uf  
	),
idhm_residencia_paciente = (
	select gm.idh_2010 
	from geral.municipio gm
	where arp.municipio_residencia_paciente = gm.codigo_ibge_municipio 
	),
residencia_amazonia_legal = (
	select gm.amazonia_legal_2021 
	from geral.municipio gm
	where arp.municipio_residencia_paciente = gm.codigo_ibge_municipio 
	),
residencia_semiarido = (
	select gm.semiarido_2021  
	from geral.municipio gm
	where arp.municipio_residencia_paciente = gm.codigo_ibge_municipio 
	),
populacao_residencia_paciente = (
	select gm.projecao_populacao_municipio_2021 
	from geral.municipio gm
	where arp.municipio_residencia_paciente = gm.codigo_ibge_municipio 
	),
estabelecimentos_saude_percap_uf = (
	select round(gu.total_estabelecimentos_saude_2021 / gu.projecao_populacao_uf_2021, 7)
	from geral.uf gu
	where arp.sigla_uf_dispensacao = gu.sigla_uf 
	),
beneficiarios_plano_saude_percap_uf = (
	select round(gu.total_beneficiarios_plano_saude_2022 / gu.projecao_populacao_uf_2021, 7)
	from geral.uf gu
	where arp.sigla_uf_dispensacao = gu.sigla_uf  
	),
renda_domiciliar_percap = (
	select gu.renda_domiciliar_percap_2021  
	from geral.uf gu
	where arp.sigla_uf_dispensacao = gu.sigla_uf  
	),
indice_gini = (
	select case
		when gm.indice_gini_2021 is not null then gm.indice_gini_2021 else gu.indice_gini_2021 end
	from geral.municipio gm
	join geral.uf gu on gm.sigla_uf = gu.sigla_uf 
	where arp.municipio_residencia_paciente = gm.codigo_ibge_municipio 
	);