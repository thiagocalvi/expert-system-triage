% =========================
% HEMORRAGIA DIGESTIVA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(hemorragia_digestiva, vermelho,
    [obstrucao_vias_aereas]).

regra(hemorragia_digestiva, vermelho,
    [falencia_respiratoria]).

regra(hemorragia_digestiva, vermelho,
    [sinais_de_choque]).

regra(hemorragia_digestiva, vermelho,
    [hemorragia_grave]).


% LARANJA
regra(hemorragia_digestiva, laranja,
    [hematese]).

regra(hemorragia_digestiva, laranja,
    [hematoquezia]).

regra(hemorragia_digestiva, laranja,
    [melena]).

regra(hemorragia_digestiva, laranja,
    [historico_hemorragia_digestiva]).

regra(hemorragia_digestiva, laranja,
    [alteracao_subita_nivel_de_consciencia]).

regra(hemorragia_digestiva, laranja,
    [dor_intensa]).


% AMARELO
regra(hemorragia_digestiva, amarelo,
    [melena_ou_groselha]).

regra(hemorragia_digestiva, amarelo,
    [historico_agudo_vomito_sangue]).

regra(hemorragia_digestiva, amarelo,
    [disturbio_coagulacao]).

regra(hemorragia_digestiva, amarelo,
    [vomitos_persistentes]).

regra(hemorragia_digestiva, amarelo,
    [dor_moderada]).


% VERDE
regra(hemorragia_digestiva, verde,
    [vomitos_sem_desidratacao]).

regra(hemorragia_digestiva, verde,
    [dor_leve_recente]).

regra(hemorragia_digestiva, verde,
    [evento_recente]).
