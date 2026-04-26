% =========================
% ALTERAÇÕES CUTÂNEAS (PEDIATRIA)
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(alteracoes_cutaneas, vermelho,
    [falencia_respiratoria]).

regra(alteracoes_cutaneas, vermelho,
    [sinais_de_choque]).

regra(alteracoes_cutaneas, vermelho,
    [crianca_nao_reativa]).


% LARANJA
regra(alteracoes_cutaneas, laranja,
    [dor_intensa]).

regra(alteracoes_cutaneas, laranja,
    [edema_facial]).

regra(alteracoes_cutaneas, laranja,
    [equimoses_purpura_petequias]).


% AMARELO
regra(alteracoes_cutaneas, amarelo,
    [dor_moderada]).

regra(alteracoes_cutaneas, amarelo,
    [ferida_infectada_com_alteracao_temperatura]).

regra(alteracoes_cutaneas, amarelo,
    [tumefacao_dolorosa_com_alteracao_temperatura]).

regra(alteracoes_cutaneas, amarelo,
    [placas_eritematosas_inicio_subito]).

regra(alteracoes_cutaneas, amarelo,
    [lesoes_bolhosas_extensas]).

regra(alteracoes_cutaneas, amarelo,
    [erupcoes_vesiculas_disseminadas]).


% VERDE
regra(alteracoes_cutaneas, verde,
    [lesao_infectada_sem_febre_tumefacao]).

regra(alteracoes_cutaneas, verde,
    [dor_leve_recente]).


% AZUL
regra(alteracoes_cutaneas, azul,
    [prurido_leve]).

regra(alteracoes_cutaneas, azul,
    [lesao_superficial_sem_sinais_sistemicos]).
