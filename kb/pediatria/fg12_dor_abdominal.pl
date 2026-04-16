% =========================
% DOR ABDOMINAL
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(dor_abdominal, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(dor_abdominal, laranja,
    [dor_intensa]).

regra(dor_abdominal, laranja,
    [vomitos_incoerciveis]).


% AMARELO
regra(dor_abdominal, amarelo,
    [fezes_ou_vomitos_com_sangue]).

regra(dor_abdominal, amarelo,
    [dor_moderada]).

regra(dor_abdominal, amarelo,
    [vomitos_persistentes]).

regra(dor_abdominal, amarelo,
    [retencao_urinaria]).


% VERDE
regra(dor_abdominal, verde,
    [dor_leve]).

regra(dor_abdominal, verde,
    [disuria]).
