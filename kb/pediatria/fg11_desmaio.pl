% =========================
% DESMAIO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(desmaio, vermelho,
    [obstrucao_vias_aereas]).

regra(desmaio, vermelho,
    [falencia_respiratoria]).

regra(desmaio, vermelho,
    [sinais_de_choque]).

regra(desmaio, vermelho,
    [hipoglicemia]).

regra(desmaio, vermelho,
    [convulsao]).


% LARANJA
regra(desmaio, laranja,
    [dispneia_aguda]).

regra(desmaio, laranja,
    [spo2_muito_baixa]).

regra(desmaio, laranja,
    [pulso_anormal]).

regra(desmaio, laranja,
    [alteracao_subita_nivel_de_consciencia]).

regra(desmaio, laranja,
    [deficit_neurologico_novo]).

regra(desmaio, laranja,
    [hiperglicemia_com_cetose]).

regra(desmaio, laranja,
    [sepse_possivel]).

regra(desmaio, laranja,
    [hipotermia]).

regra(desmaio, laranja,
    [dor_precordial_ou_cardiaca]).

regra(desmaio, laranja,
    [dor_intensa]).


% AMARELO
regra(desmaio, amarelo,
    [historia_trauma_craniano_recente]).

regra(desmaio, amarelo,
    [spo2_baixa]).

regra(desmaio, amarelo,
    [historia_inconsciencia]).

regra(desmaio, amarelo,
    [deficit_neurologico_novo]).

regra(desmaio, amarelo,
    [hiperglicemia]).

regra(desmaio, amarelo,
    [historia_discordante]).

regra(desmaio, amarelo,
    [dor_moderada]).


% VERDE
regra(desmaio, verde,
    [dor_leve_recente]).

regra(desmaio, verde,
    [evento_recente]).
