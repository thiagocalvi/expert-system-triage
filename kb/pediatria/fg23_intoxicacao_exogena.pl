% =========================
% INTOXICAÇÃO EXÓGENA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(intoxicacao_exogena, vermelho,
    [pcr_bradicardia_importante_ou_pcr_iminente]).

regra(intoxicacao_exogena, vermelho,
    [apneia_bradipneia_movimentos_paradoxais]).

regra(intoxicacao_exogena, vermelho,
    [convulsao]).

regra(intoxicacao_exogena, vermelho,
    [paciente_nao_responsivo]).

regra(intoxicacao_exogena, vermelho,
    [sinais_de_choque]).

regra(intoxicacao_exogena, vermelho,
    [edema_labial_lingua_garganta_fechando]).

regra(intoxicacao_exogena, vermelho,
    [lesao_ocular_quimica]).


% LARANJA
regra(intoxicacao_exogena, laranja,
    [alteracoes_sensoriais_comportamento]).

regra(intoxicacao_exogena, laranja,
    [contato_produto_quimico_alta_letalidade]).

regra(intoxicacao_exogena, laranja,
    [spo2_muito_baixa]).

regra(intoxicacao_exogena, laranja,
    [ingestao_substancia]).


% AMARELO
regra(intoxicacao_exogena, amarelo,
    [prurido_irritabilidade_superficie_extensa]).

regra(intoxicacao_exogena, amarelo,
    [cefaleia]).

regra(intoxicacao_exogena, amarelo,
    [spo2_baixa]).
