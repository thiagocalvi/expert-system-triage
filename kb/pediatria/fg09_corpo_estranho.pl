% =========================
% CORPO ESTRANHO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(corpo_estranho, vermelho,
    [obstrucao_vias_aereas]).

regra(corpo_estranho, vermelho,
    [estridor]).

regra(corpo_estranho, vermelho,
    [falencia_respiratoria]).

regra(corpo_estranho, vermelho,
    [hemorragia_exsanguinante]).

regra(corpo_estranho, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(corpo_estranho, laranja,
    [hemorragia_maior_incontrolavel]).

regra(corpo_estranho, laranja,
    [mecanismo_de_trauma_significativo]).

regra(corpo_estranho, laranja,
    [alteracao_subita_estado_consciencia]).

regra(corpo_estranho, laranja,
    [trauma_ocular_penetrante]).

regra(corpo_estranho, laranja,
    [dor_intensa]).


% AMARELO
regra(corpo_estranho, amarelo,
    [historia_discordante]).

regra(corpo_estranho, amarelo,
    [hemorragia_menor_incontrolavel]).

regra(corpo_estranho, amarelo,
    [dor_moderada]).


% VERDE
regra(corpo_estranho, verde,
    [inflamacao_local]).

regra(corpo_estranho, verde,
    [infeccao_local]).

regra(corpo_estranho, verde,
    [olho_vermelho]).

regra(corpo_estranho, verde,
    [dor_leve_recente]).

regra(corpo_estranho, verde,
    [evento_recente]).
