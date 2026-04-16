% =========================
% DISCRIMINADORES CLÍNICOS
% =========================

% discriminador(Nome, Descricao, Pergunta)

discriminador(sinais_de_choque,
    "Taquicardia, palidez, pele fria, sudorese, perfusão diminuída",
    "O paciente apresenta sinais de choque (pele fria, palidez, pulso fraco)?").

discriminador(dor_intensa_7_10,
    "Dor intensa (7 a 10), intolerável",
    "A dor é intensa (7 a 10 em 10)?").

discriminador(dor_moderada_4_6,
    "Dor moderada (4 a 6)",
    "A dor é moderada (4 a 6 em 10)?").

discriminador(dor_leve_1_3,
    "Dor leve (1 a 3)",
    "A dor é leve (1 a 3 em 10)?").

discriminador(vomitos_incoerciveis,
    "Vômitos persistentes sem controle",
    "O paciente está com vômitos incontroláveis?").

discriminador(vomitos_persistentes,
    "Vômitos frequentes",
    "O paciente apresenta vômitos frequentes?").

discriminador(distensao_abdominal,
    "Abdômen distendido",
    "O abdômen está distendido?").

discriminador(fezes_com_sangue,
    "Presença de sangue nas fezes",
    "Há sangue nas fezes?").

discriminador(disuria,
    "Dor ao urinar",
    "O paciente sente dor ao urinar?").


% =========================
% ACESSO AOS DADOS
% =========================

descricao_discriminador(D, Desc) :-
    discriminador(D, Desc, _).

pergunta_discriminador(D, Pergunta) :-
    discriminador(D, _, Pergunta).

todos_discriminadores(Lista) :-
    findall(D, discriminador(D, _, _), Lista).
