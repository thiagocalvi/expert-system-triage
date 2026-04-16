% =========================
% ALERGIAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(alergias, vermelho,
    [obstrucao_vias_aereas]).

regra(alergias, vermelho,
    [falencia_respiratoria]).

regra(alergias, vermelho,
    [sinais_de_choque]).

regra(alergias, vermelho,
    [crianca_nao_reativa]).

regra(alergias, vermelho,
    [estridor]).


% LARANJA
regra(alergias, laranja,
    [edema_facial]).

regra(alergias, laranja,
    [edema_de_lingua]).

regra(alergias, laranja,
    [historico_alergia_importante]).

regra(alergias, laranja,
    [frases_entrecortadas]).

regra(alergias, laranja,
    [pulso_anormal]).

regra(alergias, laranja,
    [alteracao_subita_estado_consciencia]).

regra(alergias, laranja,
    [spo2_muito_baixa]).

regra(alergias, laranja,
    [dor_intensa]).

regra(alergias, laranja,
    [coceira_intensa]).


% AMARELO
regra(alergias, amarelo,
    [spo2_baixa]).

regra(alergias, amarelo,
    [erupcoes_vesiculas_disseminadas]).

regra(alergias, amarelo,
    [historia_inconsciencia]).


% VERDE
regra(alergias, verde,
    [deformidade]).

regra(alergias, verde,
    [dor_leve_recente]).

regra(alergias, verde,
    [evento_recente]).

regra(alergias, verde,
    [inflamacao_local]).
