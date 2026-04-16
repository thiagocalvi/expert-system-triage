% =========================
% HISTÓRICO DE DIABETES
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(historico_de_diabetes, vermelho,
    [alteracoes_sensoriais_comportamento]).

regra(historico_de_diabetes, vermelho,
    [alteracao_subita_nivel_de_consciencia]).

regra(historico_de_diabetes, vermelho,
    [convulsao]).

regra(historico_de_diabetes, vermelho,
    [sinais_de_choque]).

regra(historico_de_diabetes, vermelho,
    [cefaleia_intensa]).

regra(historico_de_diabetes, vermelho,
    [vomitos_persistentes]).

regra(historico_de_diabetes, vermelho,
    [dispneia_aguda]).


% LARANJA
regra(historico_de_diabetes, laranja,
    [spo2_baixa]).

regra(historico_de_diabetes, laranja,
    [sinais_de_desidratacao]).


% AMARELO
regra(historico_de_diabetes, amarelo,
    [cefaleia_moderada]).
