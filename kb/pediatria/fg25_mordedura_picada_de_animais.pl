% =========================
% MORDEDURA / PICADA DE ANIMAIS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(mordedura_picada_de_animais, vermelho,
	[pcr_bradicardia_importante_ou_pcr_iminente]).

regra(mordedura_picada_de_animais, vermelho,
	[sinais_de_choque]).

regra(mordedura_picada_de_animais, vermelho,
	[mutilacao]).

regra(mordedura_picada_de_animais, vermelho,
	[lesao_grandes_vasos_ou_hemorragia_grave]).

regra(mordedura_picada_de_animais, vermelho,
	[acidente_animal_peconhento_acometimento_sistemico]).


% LARANJA
regra(mordedura_picada_de_animais, laranja,
	[estridor]).

regra(mordedura_picada_de_animais, laranja,
	[dispneia]).

regra(mordedura_picada_de_animais, laranja,
	[edema_facial]).

regra(mordedura_picada_de_animais, laranja,
	[acidente_animal_peconhento_sinais_locais]).

regra(mordedura_picada_de_animais, laranja,
	[dor_intensa]).

regra(mordedura_picada_de_animais, laranja,
	[ferida_profunda]).

regra(mordedura_picada_de_animais, laranja,
	[ferimento_extenso_mordedura_ou_area_critica]).

regra(mordedura_picada_de_animais, laranja,
	[hemorragia_maior_incontrolavel]).


% AMARELO
regra(mordedura_picada_de_animais, amarelo,
	[historico_alergia_importante]).

regra(mordedura_picada_de_animais, amarelo,
	[dor_moderada]).

regra(mordedura_picada_de_animais, amarelo,
	[acidente_rabico_potencial]).

regra(mordedura_picada_de_animais, amarelo,
	[erupcoes_vesiculas_disseminadas]).

regra(mordedura_picada_de_animais, amarelo,
	[hemorragia_leve_controlada]).

regra(mordedura_picada_de_animais, amarelo,
	[prurido_moderado]).


% VERDE
regra(mordedura_picada_de_animais, verde,
	[infeccao_ou_inflamacao_local]).

regra(mordedura_picada_de_animais, verde,
	[prurido_leve]).

regra(mordedura_picada_de_animais, verde,
	[dor_leve]).

regra(mordedura_picada_de_animais, verde,
	[ferida_pequena_sem_sangramento]).

regra(mordedura_picada_de_animais, verde,
	[lesao_superficial_sem_sinais_sistemicos]).
