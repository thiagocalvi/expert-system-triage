% =========================
% ALTERAÇÕES DO NÍVEL DE CONSCIÊNCIA, COMPORTAMENTO OU SENSÓRIO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(alteracoes_consciencia, vermelho,
    [estado_mental_alterado]).

regra(alteracoes_consciencia, vermelho,
    [respiracao_inadequada]).

regra(alteracoes_consciencia, vermelho,
    [saturacao_o2_menor_85]).

regra(alteracoes_consciencia, vermelho,
    [sinais_de_choque]).

regra(alteracoes_consciencia, vermelho,
    [sinais_neurologicos_focais]).

regra(alteracoes_consciencia, vermelho,
    [deficit_neurologico_agudo]).


% LARANJA
regra(alteracoes_consciencia, laranja,
    [historia_trauma_craniano_recente]).

regra(alteracoes_consciencia, laranja,
    [historia_overdose_envenenamento]).

regra(alteracoes_consciencia, laranja,
    [extrema_agitacao_alucinacoes]).

regra(alteracoes_consciencia, laranja,
    [alteracao_temperatura_maior_40]).

regra(alteracoes_consciencia, laranja,
    [saturacao_o2_85_89]).

regra(alteracoes_consciencia, laranja,
    [potencial_suicida_homicida]).

regra(alteracoes_consciencia, laranja,
    [dor_intensa]).


% AMARELO
regra(alteracoes_consciencia, amarelo,
    [dor_moderada]).

regra(alteracoes_consciencia, amarelo,
    [saturacao_o2_90_94]).

regra(alteracoes_consciencia, amarelo,
    [vomito_persistente]).

regra(alteracoes_consciencia, amarelo,
    [historia_inconsciencia]).


% VERDE
regra(alteracoes_consciencia, verde,
    [saturacao_o2_maior_igual_95]).

regra(alteracoes_consciencia, verde,
    [vomitos_esporadicos]).
