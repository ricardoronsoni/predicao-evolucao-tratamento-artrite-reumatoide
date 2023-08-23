# Introdução
A artrite reumatoide é uma doença crônica autoimune que afeta principalmente as articulações, causando inflamação, dor e rigidez. O tratamento da artrite reumatoide apresenta desafios significativos devido à natureza complexa da doença e às diferentes respostas dos pacientes aos medicamentos disponíveis. Os medicamentos modificadores do curso da doença (MMCD) sintéticos são um dos tratamentos mais utilizados.   
No entanto, mesmo com o uso dos MMCD sintéticos, nem todos os pacientes respondem de maneira adequada a esses medicamentos. Além disso, alguns pacientes podem desenvolver efeitos colaterais indesejáveis ou tolerância aos MMCD sintéticos ao longo do tempo. Portanto, é necessário considerar a troca de MMCD e explorar outras opções terapêuticas. Essa mudança de tratamento busca melhorar o controle da doença, aliviar os sintomas e retardar a progressão da artrite reumatoide.   
Contudo, a opção de troca do tratamento para outras classes terapêuticas pode ocasionar um impacto financeiro significativo para o Sistema Único de Saúde, tendo em vista que preço dos medicamentos Abatacepte, Adalimumabe, Baricitinibe, Certolizumabe pegol, Etanercepte, Golimumabe, Infliximabe, Rituximabe, Tocilizumabe, Tofacitinibe, Upadacitinibe é consideravelmente maior que os do MMCD sintéticos.

# Objetivo
Criar modelo para prever a evolução do tratamento do paciente com artrite reumatoide, objetivando classificar se um paciente irá migrar do tratamento com MMCD sintético para medicamentos das classes biológico, MMCDsae ou MMCDbio, utilizando os dados do SIA/SUS no período de janeiro de 2018 a fevereiro de 2023.

# Variáveis
## Preditoras
- cid [string]: CID-10 do paciente com artrite reumatoide;   
- idade_paciente_inicio_tto [int]: Idade do paciente no início do tratamento;   
- sexo_paciente [string]: Sexo do paciente (F/M), conforme padrão do SIA/SUS;   
- municipio_residencia_paciente [int]: Código IBGE do município de residência do paciente;   
- populacao_residencia_paciente [int]: População do município de residência do paciente;   
- regiao_residencia_paciente [string]: Região do Brasil onde reside o paciente;   
- idhm_residencia_paciente [float]: IDHM (2010) do município de residência do paciente;   
- residencia_amazonia_legal [bool]: Informa se paciente reside na amazônia legal;   
- residencia_semiarido [bool]: Informa se paciente reside no semiárido;   
- estabelecimentos_saude_percap_uf [float]: Quantidade per capita de estabelecimentos de saúde na UF de residência do paciente;   
- beneficiarios_plano_saude_percap_uf [float]: Razão do número de beneficiários de plano de saúde da UF dividido pelo numero de habitantes;   
- indice_gini [float]: Índice de Gini (2021) do município de residência do paciente, se morador de capital, ou da UF de residência;   
- renda_domiciliar_percap [float]: Renda domiciliar per capita da UF de residência do paciente;
- sigla_uf_dispensacao [string]: Sigla da UF de dispensação do medicamento;
- codigo_municipio_dispensacao [int]: Código IBGE do município de dispensação do medicamento;
- cnes_dispensacao [int]: Código do Cadastro Nacional de Estabelecimentos de Saúde do estabelecimento de dispensação;
- cnes_solicitante [int]: Código do Cadastro Nacional de Estabelecimentos de Saúde do estabelecimento que solicitou o medicamento;
- uso_leflunomida [bool]: Indica se o paciente fez uso de leflunomida;
- meses_tto_leflunomida [int]: Total de meses em uso de leflunomida;
- uso_hidroxicloroquina [bool]: Indica se o paciente fez uso de hidroxicloroquina;
- meses_tto_hidroxicloroquina [int]: Total de meses em uso de hidroxicloroquina;
- uso_cloroquina [bool]: Indica se o paciente fez uso de cloroquina;
- meses_tto_cloroquina [int]: Total de meses em uso de cloroquina;
- uso_metotrexato [bool]: Indica se o paciente fez uso de metotrexato;
- meses_tto_metotrexato [int]: Total de meses em uso de metotrexato;
- uso_sulfassalazina [bool]: Indica se o paciente fez uso de sulfassalazina;
- meses_tto_sulfassalazina [int]: Total de meses em uso de sulfassalazina;
- uso_azatioprina [bool]: Indica se o paciente fez uso de azatioprina;
- meses_tto_azatioprina [int]: Total de meses em uso de azatioprina;
- uso_ciclosporina [bool]: Indica se o paciente fez uso de ciclosporina;
- meses_tto_ciclosporina [int]: Total de meses em uso de ciclosporina;
- uso_ciclofosfamida [bool]: Indica se o paciente fez uso de ciclofosfamida;
- meses_tto_ciclofosfamida [int]: Total de meses em uso de ciclofosfamida;
- uso_mtx_hcq [bool]: Indica se o paciente fez uso de metotrexato e hidroxicloroquina/cloroquina no mesmo mês;
- meses_tto_mtx_hcq [int]: Total de meses em uso de metotrexato e hidroxicloroquina/cloroquina;
- uso_mtx_ssz [bool]: Indica se o paciente fez uso de metotrexato e sulfassalazina no mesmo mês;
- meses_tto_mtx_ssz [int]: Total de meses em uso de metotrexato e sulfassalazina;
- uso_ssz_hcq [bool]: Indica se o paciente fez uso de sulfassalazina e hidroxicloroquina/cloroquina no mesmo mês;
- meses_tto_ssz_hcq [int]: Total de meses em uso de sulfassalazina e hidroxicloroquina/cloroquina;
- uso_lef_mtx [bool]: Indica se o paciente fez uso de leflunomida e metotrexato no mesmo mês;
- meses_tto_lef_mtx [int]: Total de meses em uso de leflunomida e metotrexato;
- uso_lef_hcq [bool]: Indica se o paciente fez uso de leflunomida e hidroxicloroquina/cloroquina no mesmo mês;
- meses_tto_lef_hcq [int]: Total de meses em uso de leflunomida e hidroxicloroquina/cloroquina;
- uso_naproxeno [bool]: Indica se o paciente fez uso de naproxeno;
- meses_tto_naproxeno [int]: Total de meses em uso de naproxeno;
- uso_lef_ssz [bool]: Indica se o paciente fez uso de leflunomida e sulfassalazina no mesmo mês;
- meses_tto_lef_ssz [int]: Total de meses em uso de leflunomida e sulfassalazina;
- uso_mtx_ssz_hcq [bool]: Indica se o paciente fez uso de metotrexato, sulfassalazina e hidroxicloroquina/cloroquina no mesmo mês;
- meses_tto_mtx_ssz_hcq [int]: Total de meses em uso de metotrexato, sulfassalazina e hidroxicloroquina/cloroquina;
- meses_mmcd [int]: Total de meses em uso de MMCD;
- mmcd_distintos [int]: Quantidade distinta de MMCD utilizados;
- uso_tto_mmcd_duplo [bool]: Indica se o paciente fez tratamento duplo com MMCD;
- meses_tto_mmcd_duplo [int]: Total de meses em uso de tratamento duplo com MMCD;
- uso_tto_mmcd_triplo [bool]: Indica se o paciente fez uso de terapia tripla com MMCD;
- meses_tto_mmcd_triplo [int]: Total de meses em uso da terapia tripla com MMCD;
- meses_total_tto [int]: Total de meses de tratamento.
## Dependente
- uso_outra_terapia [bool]: Indica se paciente utilizou baricitinibe, tofacitinibe, upadacitinibe, adalimumabe, certolizumabe pegol, etanercepte, golimumabe, infliximabe, abatacepte, rituximabe ou tocilizumabe.

# Metodologia
## Coleta dos dados
A coleta de dados foi realizada em 10 de abril de 2023 e foram utilizados os registros de APAC do Componente Especializado da Assistência Farmacêutica (CEAF) provenientes do sistema Sistema de Informações Ambulatoriais do SUS (SIA/SUS). Foram selecionadas as APAC que continham a data de dispensação entre janeiro de 2018 a fevereiro de 2023.  
Para a obtenção dos dados no SIA/SUS foi utilizado um programa disponibilizado no GitHub (https://github.com/ricardoronsoni/importar-apac-ceaf) que sistematiza o download dos dados do FTP do Datasus e persiste os mesmos em um banco de dados relacional.  
Todas as instruções SQL utilizadas para tratar os dados estão disponíveis no diretório [SQL](./sql/) 

## Critério de inclusão pacientes
Foram selecionados apenas os pacientes em início de tratamento. Para isso, foi utilizado como critério o fato do paciente não ter registro de dispensação no CEAF para artrite reumatoide nos primeiros seis meses da série de dados (jan-jun/2018).   

## Critério de exclusão pacientes
Os pacientes que utilizaram algum medicamento das classes de biológico, MMCDsae ou MMCDbio antes de completar seis meses de tratamento foram excluídos pois não estavam seguindo as recomendações dos Protocolos Clínicos e Diretrizes Terapêuticas do Ministério da Saúde (PCDT/MS).

# Pré-processamento e Resultados
Todas as informações sobre o pré-processamento e resultados obtidos estão descritos no arquivo [Jupyter Notebook](evolucao_tratamento.ipynb) 