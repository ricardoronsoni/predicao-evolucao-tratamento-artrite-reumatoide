create table apac.artrite_reumatoide_base as 
	select
		sigla_uf_dispensacao, 
		codigo_municipio_dispensacao,
		procedimento,
		quantidade_aprovada,
		cid,
		cns_paciente, 
		idade_paciente,
		sexo_paciente,
		municipio_residencia_paciente, 
		cnes_dispensacao,
		cnes_solicitante, 
		competencia_dispensacao
	from apac.medicamento m
	where 
		cid in ('M050','M051','M052','M053','M058','M060', 'M068')
		and quantidade_aprovada > 0
		and competencia_dispensacao >= to_date('2018-01-01','YYYY-MM-DD');
	
alter table apac.artrite_reumatoide_base
	add column nome_medicamento varchar(200),
	add column principio_ativo varchar(50),
	add column categoria_medicamento varchar(50);
	
create index index_arb_cns_paciente_principio_ativo ON apac.artrite_reumatoide_base (cns_paciente, principio_ativo);
create index index_arb_cns_paciente_categoria_medicamento ON apac.artrite_reumatoide_base (cns_paciente, categoria_medicamento);

create table apac.artrite_reumatoide_paciente (
    cns_paciente char(30) not null primary key,
    cid char(4),
    idade_paciente_inicio_tto numeric(3),
    sexo_paciente char(1),
    municipio_residencia_paciente numeric(6),
    populacao_residencia_paciente numeric,
    regiao_residencia_paciente varchar(32),
    residencia_amazonia_legal bool,
    residencia_semiarido bool,
    estabelecimentos_saude_percap_uf numeric(8,7),
    beneficiarios_plano_saude_percap_uf numeric(8,7),
    idhm_residencia_paciente numeric(4,3),
    indice_gini numeric(17,16),
    renda_domiciliar_percap numeric(8,2),
    sigla_uf_dispensacao char(2),
    codigo_municipio_dispensacao numeric(6),
    cnes_dispensacao char(7),
    cnes_solicitante char(7),
    uso_leflunomida bool,
    meses_tto_leflunomida numeric,
    uso_hidroxicloroquina bool,
    meses_tto_hidroxicloroquina numeric,
    uso_cloroquina bool,
    meses_tto_cloroquina numeric,
    uso_metotrexato bool,
    meses_tto_metotrexato numeric,
    uso_sulfassalazina bool,
    meses_tto_sulfassalazina numeric,
    uso_azatioprina bool,
    meses_tto_azatioprina numeric,
    uso_ciclosporina bool,
    meses_tto_ciclosporina numeric,
    uso_ciclofosfamida bool,
    meses_tto_ciclofosfamida numeric,
    uso_mtx_hcq bool,
	meses_tto_mtx_hcq numeric,
	uso_mtx_ssz bool,
	meses_tto_mtx_ssz numeric,
	uso_ssz_hcq bool,
	meses_tto_ssz_hcq numeric,
	uso_lef_mtx bool,
	meses_tto_lef_mtx numeric,
	uso_lef_hcq bool,
	meses_tto_lef_hcq numeric,
	uso_naproxeno bool,
	meses_tto_naproxeno numeric,
	uso_lef_ssz bool,
	meses_tto_lef_ssz numeric,
	uso_mtx_ssz_hcq bool,
	meses_tto_mtx_ssz_hcq numeric,
    meses_mmcd numeric,
    maior_gap_mmcd numeric,
	mmcd_distintos numeric,
	uso_tto_mmcd_duplo bool,
	meses_tto_mmcd_duplo numeric,
	uso_tto_mmcd_triplo bool,
	meses_tto_mmcd_triplo numeric,
    competencia_inicio numeric,
    meses_total_tto numeric,
    nova_terapia bool,
	paciente_novo bool,
	nova_terapia_antes_seis_meses_mmcd bool,
	competencia_inicio_nova_terapia date
)

create index index_artrite_reumatoide_paciente_cns_paciente_ ON apac.artrite_reumatoide_paciente (cns_paciente);