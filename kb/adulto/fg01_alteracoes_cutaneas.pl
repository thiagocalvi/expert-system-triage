% =========================
% ALTERAÇÕES CUTÂNEAS
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(alteracoes_cutaneas, vermelho,
    [respiracao_inadequada]).

regra(alteracoes_cutaneas, vermelho,
    [sinais_de_choque]).


% LARANJA
regra(alteracoes_cutaneas, laranja,
    [estridor_laringeo_ou_dificuldade_falar]).

regra(alteracoes_cutaneas, laranja,
    [edema_difuso_de_face]).

regra(alteracoes_cutaneas, laranja,
    [perfusao_comprometida]).

regra(alteracoes_cutaneas, laranja,
    [dor_intensa]).

regra(alteracoes_cutaneas, laranja,
    [ferida_dificil_controle_sangramento]).

regra(alteracoes_cutaneas, laranja,
    [toxemiado_prostrado_ou_febril]).

regra(alteracoes_cutaneas, laranja,
    [contato_produtos_quimicos_alta_letalidade]).


% AMARELO
regra(alteracoes_cutaneas, amarelo,
    [dor_moderada]).

regra(alteracoes_cutaneas, amarelo,
    [ferida_sangramento_controlado]).

regra(alteracoes_cutaneas, amarelo,
    [abscesso_e_febre]).

regra(alteracoes_cutaneas, amarelo,
    [placas_eritematosas_inicio_subito]).

regra(alteracoes_cutaneas, amarelo,
    [erupcoes_secretantes_bolhosas_com_prurido]).

regra(alteracoes_cutaneas, amarelo,
    [infeccao_secundaria]).


% VERDE
regra(alteracoes_cutaneas, verde,
    [dor_leve]).

regra(alteracoes_cutaneas, verde,
    [abscesso_sem_febre]).

regra(alteracoes_cutaneas, verde,
    [ferida_infectada]).

regra(alteracoes_cutaneas, verde,
    [ferida_superficial]).
