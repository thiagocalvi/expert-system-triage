% =========================
% EXPOSIÇÃO A AGENTES QUÍMICOS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(exposicao_a_agentes_quimicos, vermelho,
	[estado_mental_alterado]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[respiracao_inadequada]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[saturacao_o2_menor_85]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[edema_facial]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[edema_de_lingua]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[sinais_de_choque]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[convulsao_em_atividade]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[risco_contaminacao_continua]).

regra(exposicao_a_agentes_quimicos, vermelho,
	[lesao_ocular_quimica_aguda]).


% LARANJA
regra(exposicao_a_agentes_quimicos, laranja,
	[ingestao_menos_6h_sem_sintomas]).

regra(exposicao_a_agentes_quimicos, laranja,
	[contato_produtos_quimicos_alta_letalidade]).

regra(exposicao_a_agentes_quimicos, laranja,
	[saturacao_o2_85_89]).

regra(exposicao_a_agentes_quimicos, laranja,
	[dor_intensa]).

regra(exposicao_a_agentes_quimicos, laranja,
	[historia_inconsciencia]).

regra(exposicao_a_agentes_quimicos, laranja,
	[estridor_laringeo_ou_dificuldade_falar]).

regra(exposicao_a_agentes_quimicos, laranja,
	[historia_psiquiatrica_importante]).

regra(exposicao_a_agentes_quimicos, laranja,
	[acidente_perfurocortante_material_biologico]).


% AMARELO
regra(exposicao_a_agentes_quimicos, amarelo,
	[prurido_ou_irritacao_intensa]).

regra(exposicao_a_agentes_quimicos, amarelo,
	[saturacao_o2_90_94]).

regra(exposicao_a_agentes_quimicos, amarelo,
	[dor_moderada]).


% VERDE
regra(exposicao_a_agentes_quimicos, verde,
	[dor_leve]).

regra(exposicao_a_agentes_quimicos, verde,
	[saturacao_o2_maior_igual_95]).

regra(exposicao_a_agentes_quimicos, verde,
	[alteracoes_dermicas_locais]).
