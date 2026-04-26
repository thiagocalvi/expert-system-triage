% =========================
% DOR EM EXTREMIDADES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% LARANJA
regra(dor_em_extremidades, laranja,
    [comprometimento_vascular_distal]).


% AMARELO
regra(dor_em_extremidades, amarelo,
    [dor_panturrilhas_prejuizo_marcha]).

regra(dor_em_extremidades, amarelo,
    [artralgia_com_limitacao_sinais_flogisticos]).


% VERDE
regra(dor_em_extremidades, verde,
    [artralgia_sem_sinais_flogisticos]).


% AZUL
regra(dor_em_extremidades, azul,
    [dor_superficial_cronica_compressao]).
