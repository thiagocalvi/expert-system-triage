% =========================
% ALTERAÇÕES DE COMPORTAMENTO
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(alteracoes_comportamento, vermelho,
    [apneia_bradipneia_movimentos_paradoxais]).

regra(alteracoes_comportamento, vermelho,
    [sinais_de_choque]).

regra(alteracoes_comportamento, vermelho,
    [hiperglicemia]).

regra(alteracoes_comportamento, vermelho,
    [hipoglicemia]).

regra(alteracoes_comportamento, vermelho,
    [convulsao_em_atividade]).

regra(alteracoes_comportamento, vermelho,
    [paciente_nao_responsivo]).


% LARANJA
regra(alteracoes_comportamento, laranja,
    [alteracao_subita_estado_consciencia]).

regra(alteracoes_comportamento, laranja,
    [deficit_neurologico_agudo]).

regra(alteracoes_comportamento, laranja,
    [vomitos_incoerciveis]).

regra(alteracoes_comportamento, laranja,
    [risco_alto_agredir_outros]).

regra(alteracoes_comportamento, laranja,
    [risco_alto_autoagressao]).

regra(alteracoes_comportamento, laranja,
    [estado_pos_ictal_ou_deficit_focal]).


% AMARELO
regra(alteracoes_comportamento, amarelo,
    [historia_inconsciencia]).

regra(alteracoes_comportamento, amarelo,
    [historia_trauma_craniano_recente]).

regra(alteracoes_comportamento, amarelo,
    [deficit_neurologico_novo]).

regra(alteracoes_comportamento, amarelo,
    [historico_psiquiatrico_importante]).

regra(alteracoes_comportamento, amarelo,
    [risco_moderado_agredir_outros]).

regra(alteracoes_comportamento, amarelo,
    [risco_moderado_autoagressao]).
