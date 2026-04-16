% =========================
% AGRESSÃO E VIOLÊNCIA FÍSICA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(agressao_violencia, vermelho,
    [obstrucao_vias_aereas]).

regra(agressao_violencia, vermelho,
    [falencia_respiratoria]).

regra(agressao_violencia, vermelho,
    [hemorragia_exsanguinante]).

regra(agressao_violencia, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(agressao_violencia, laranja,
    [mecanismo_de_trauma_significativo]).

regra(agressao_violencia, laranja,
    [dispneia_aguda]).

regra(agressao_violencia, laranja,
    [hemorragia_maior_incontrolavel]).

regra(agressao_violencia, laranja,
    [alteracao_subita_estado_consciencia]).

regra(agressao_violencia, laranja,
    [deficit_neurologico_agudo]).

regra(agressao_violencia, laranja,
    [dor_intensa]).


% AMARELO
regra(agressao_violencia, amarelo,
    [hemorragia_menor_incontrolavel]).

regra(agressao_violencia, amarelo,
    [historia_inconsciencia]).

regra(agressao_violencia, amarelo,
    [deficit_neurologico_novo]).

regra(agressao_violencia, amarelo,
    [historia_discordante]).

regra(agressao_violencia, amarelo,
    [dor_moderada]).
