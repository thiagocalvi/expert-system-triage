% =========================
% VÔMITOS E / OU DIARREIA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(vomitos_diarreia, vermelho,
    [desidratacao_grave]).

regra(vomitos_diarreia, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(vomitos_diarreia, laranja,
    [desidratacao]).

regra(vomitos_diarreia, laranja,
    [dispneia]).

regra(vomitos_diarreia, laranja,
    [hiperglicemia]).

regra(vomitos_diarreia, laranja,
    [hipoglicemia]).

regra(vomitos_diarreia, laranja,
    [fezes_com_sangue]).


% AMARELO
regra(vomitos_diarreia, amarelo,
    [sinais_de_desidratacao]).

regra(vomitos_diarreia, amarelo,
    [dor_moderada]).

regra(vomitos_diarreia, amarelo,
    [melena_ou_groselha]).

regra(vomitos_diarreia, amarelo,
    [vomitos_persistentes]).


% VERDE
regra(vomitos_diarreia, verde,
    [quadro_agudo_sem_desidratacao]).

regra(vomitos_diarreia, verde,
    [diarreia_sanguinolenta_prolongada]).


% 🔵 AZUL
regra(vomitos_diarreia, azul,
    [diarreia_prolongada]).
