% =========================
% CORES DO PROTOCOLO PAC
% =========================
% cor(Populacao, Nome, Prioridade, TempoMin, Descricao)

% =========================
% PEDIATRIA
% =========================

cor(pediatria, vermelho, 1, 0,
    "Atendimento imediato - risco iminente de morte").

cor(pediatria, laranja, 2, 10,
    "Muito urgente - risco de agravamento").

cor(pediatria, amarelo, 3, 60,
    "Urgente - atendimento mediato").

cor(pediatria, verde, 4, 120,
    "Pouco urgente - sem risco imediato").

cor(pediatria, azul, 5, 120,
    "Não urgente - procurar UBS").


% =========================
% ADULTO
% =========================

cor(adulto, vermelho, 1, 0,
    "Emergência - risco iminente de morte e necessidade de intervenção imediata").

cor(adulto, laranja, 2, 10,
    "Muito urgente - risco de agravamento, necessita atendimento rápido").

cor(adulto, amarelo, 3, 60,
    "Urgente - atendimento médico mediato").

cor(adulto, verde, 4, 120,
    "Pouco urgente - sem risco imediato, atendimento por ordem de chegada").

cor(adulto, azul, 5, 240,
    "Não urgente - pode ser atendido na UBS, sem necessidade de pronto atendimento").


% =========================
% UTILITÁRIOS
% =========================

% Retorna prioridade de uma cor
prioridade(Pop, Cor, P) :-
    cor(Pop, Cor, P, _, _).

% Retorna tempo de atendimento
tempo_atendimento(Pop, Cor, Tempo) :-
    cor(Pop, Cor, _, Tempo, _).

% Verifica se Cor1 é mais grave que Cor2
mais_grave(Pop, Cor1, Cor2) :-
    prioridade(Pop, Cor1, P1),
    prioridade(Pop, Cor2, P2),
    P1 < P2.

% Lista todas as cores de uma população
todas_cores(Pop, Lista) :-
    findall(C, cor(Pop, C, _, _, _), Lista).

% Mensagem amigável para exibição
mensagem_cor(Pop, Cor, Msg) :-
    cor(Pop, Cor, _, Tempo, Desc),
    format(atom(Msg),
        "Classificação: ~w (~w min). ~w",
        [Cor, Tempo, Desc]).
