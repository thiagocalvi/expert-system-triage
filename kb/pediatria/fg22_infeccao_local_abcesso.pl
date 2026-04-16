% =========================
% INFECÇÃO LOCAL / ABCESSO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(infeccao_local_abcesso, vermelho,
    [obstrucao_vias_aereas]).

regra(infeccao_local_abcesso, vermelho,
    [falencia_respiratoria]).

regra(infeccao_local_abcesso, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(infeccao_local_abcesso, laranja,
    [comprometimento_vascular_distal]).

regra(infeccao_local_abcesso, laranja,
    [enfisema_subcutaneo]).

regra(infeccao_local_abcesso, laranja,
    [dor_intensa]).


% AMARELO
regra(infeccao_local_abcesso, amarelo,
    [artralgia_com_limitacao_sinais_flogisticos]).

regra(infeccao_local_abcesso, amarelo,
    [dor_moderada]).


% VERDE
regra(infeccao_local_abcesso, verde,
    [evento_recente]).

regra(infeccao_local_abcesso, verde,
    [dor_leve]).
