% =========================
% MORDEDURAS E PICADAS DE ANIMAIS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(mordeduras_e_picadas_de_animais, vermelho,
	[lesao_grandes_vasos_ou_hemorragia_grave]).

regra(mordeduras_e_picadas_de_animais, vermelho,
	[obstrucao_vias_aereas]).

regra(mordeduras_e_picadas_de_animais, vermelho,
	[respiracao_inadequada]).

regra(mordeduras_e_picadas_de_animais, vermelho,
	[sinais_de_choque]).

regra(mordeduras_e_picadas_de_animais, vermelho,
	[saturacao_o2_menor_85]).

regra(mordeduras_e_picadas_de_animais, vermelho,
	[saturacao_o2_menor_90_ou_menor_95_com_suplementacao]).


% LARANJA
regra(mordeduras_e_picadas_de_animais, laranja,
	[alteracao_nivel_consciencia_ecg_9_13]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[estridor_laringeo_ou_dificuldade_falar]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[edema_facial]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[edema_de_lingua]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[saturacao_o2_85_89]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[ferimentos_profundos]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[dor_intensa]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[historia_importante_alergia]).

regra(mordeduras_e_picadas_de_animais, laranja,
	[exposicao_veneno_alta_letalidade]).


% AMARELO
regra(mordeduras_e_picadas_de_animais, amarelo,
	[sem_sinais_sistemicos]).

regra(mordeduras_e_picadas_de_animais, amarelo,
	[eritema_ou_bolhas_disseminadas]).

regra(mordeduras_e_picadas_de_animais, amarelo,
	[dor_moderada]).

regra(mordeduras_e_picadas_de_animais, amarelo,
	[saturacao_o2_90_94]).

regra(mordeduras_e_picadas_de_animais, amarelo,
	[prurido_intenso]).

regra(mordeduras_e_picadas_de_animais, amarelo,
	[ferida_sangramento_controlado]).


% VERDE
regra(mordeduras_e_picadas_de_animais, verde,
	[saturacao_o2_maior_igual_95]).

regra(mordeduras_e_picadas_de_animais, verde,
	[dor_leve]).

regra(mordeduras_e_picadas_de_animais, verde,
	[inflamacao_local]).

regra(mordeduras_e_picadas_de_animais, verde,
	[infeccao_local]).
