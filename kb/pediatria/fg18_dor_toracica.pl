% =========================
% DOR TORÁCICA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_toracica, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(dor_toracica, laranja,
    [falencia_respiratoria]).

regra(dor_toracica, laranja,
    [cianose_pequenos_esforcos]).

regra(dor_toracica, laranja,
    [dor_intensa]).

regra(dor_toracica, laranja,
    [spo2_muito_baixa]).

regra(dor_toracica, laranja,
    [trauma_subito]).


% AMARELO
regra(dor_toracica, amarelo,
    [dor_moderada]).

regra(dor_toracica, amarelo,
    [trauma_agudo]).

regra(dor_toracica, amarelo,
    [sensacao_aperto_toracico_ansiedade]).


% VERDE
regra(dor_toracica, verde,
    [dor_leve]).

regra(dor_toracica, verde,
    [tosse_frequente]).

regra(dor_toracica, verde,
    [piora_ao_movimento]).


% AZUL
regra(dor_toracica, azul,
    [dor_superficial_cronica_compressao]).

regra(dor_toracica, azul,
    [dor_referida_melhora_repouso]).
