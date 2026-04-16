% =========================
% DISCRIMINADORES CLÍNICOS
% =========================

% discriminador(Nome, População, Descricao, Pergunta)

discriminador(sinais_de_choque, adulto,
    "Hipotensão (PA < 80 mmHg), taquicardia (>= 150) ou bradicardia (< 40), palidez acentuada, sudorese, pele fria, pulso fino, perfusão diminuída, irritabilidade, alteração do nível de consciência e oligúria.",
    "O paciente apresenta sinais de choque?").
discriminador(sinais_de_choque, pediatria,
    "Taquicardia; palidez acentuada; pele fria; sudorese; pulso fino; perfusão diminuída; letargia; taquipneia; irritabilidade; oligúria.",
    "A criança apresenta sinais de choque?").

discriminador(dor_intensa, adulto,
    "Dor intolerável (8 a 10/10), frequentemente descrita como a pior já sentida. Pode estar associada com abscesso ou flutuação.",
    "A dor é intensa (8 a 10 em 10)?").
discriminador(dor_intensa, pediatria,
    "Dor abdominal, torácica, em membros, lombar, sem resposta a analgésico (7 a 10). Em crianças/bebês: choro contínuo e inconsolável, taquicárdicos.",
    "A criança apresenta dor intensa (7 a 10) ou choro contínuo inconsolável?").

discriminador(dor_moderada, adulto,
    "Dor suportável, porém intensa (5 a 7/10). Pode estar associada com abscesso ou flutuação.",
    "A dor é moderada (5 a 7 em 10)?").
discriminador(dor_moderada, pediatria,
    "Dor intensa, porém suportável (4 a 6). Em crianças/bebês: choram intermitentemente e são consoláveis.",
    "A criança apresenta dor moderada (4 a 6) ou choro intermitente consolável?").

discriminador(dor_leve, adulto,
    "Dor leve (1 a 5/10). Pode estar associada com abscesso ou flutuação.",
    "A dor é leve (1 a 5 em 10)?").
discriminador(dor_leve, pediatria,
    "Dor leve (1 a 3)",
    "A dor é leve (1 a 3 em 10)?").

discriminador(vomitos_incoerciveis, adulto,
    "Vômitos persistentes sem controle",
    "O paciente está com vômitos incontroláveis?").
discriminador(vomitos_incoerciveis, pediatria,
    "Vômitos que não cessam ou 5 ou mais episódios na última hora.",
    "Apresenta vômitos incoercíveis (>= 5 episódios na última hora)?").

discriminador(vomitos_persistentes, adulto,
    "Episódios contínuos que não cessam com medidas simples",
    "O paciente apresenta vômitos persistentes?").
discriminador(vomitos_persistentes, pediatria,
    "Persistência dos vômitos por mais de 24 horas, contínuos ou sem alívio.",
    "Apresenta náuseas ou vômitos persistentes (> 24h ou contínuos)?").

discriminador(distensao_abdominal, adulto,
    "Abdômen distendido",
    "O abdômen está distendido?").

discriminador(fezes_com_sangue, adulto,
    "Presença de sangue nas fezes",
    "Há sangue nas fezes?").
discriminador(fezes_com_sangue, pediatria,
    "Fezes e / ou vômitos com presença de sangue.",
    "Apresenta fezes com sangramento vivo e/ou vômitos sanguinolentos?").

discriminador(disuria, adulto,
    "Dor ao urinar",
    "O paciente sente dor ao urinar?").
discriminador(disuria, pediatria,
    "Dor ou dificuldade para urinar.",
    "Apresenta disúria (dor/dificuldade ao urinar)?").

discriminador(respiracao_inadequada, adulto,
    "FR < 10 ou >= 36 irpm com incapacidade de falar; Cianose; letargia e/ou confusão mental; FC < 40 ou >= 150 bpm",
    "O paciente apresenta respiração inadequada?").

discriminador(estridor_laringeo_ou_dificuldade_falar, adulto,
    "Estridor: som resultante do fluxo turbulento de ar na via aérea superior",
    "O paciente apresenta estridor laríngeo ou dificuldade de falar?").

discriminador(edema_difuso_de_face, adulto,
    "Inchaço envolvendo derme profunda e tecido subcutâneo",
    "O paciente apresenta edema difuso de face?").

discriminador(perfusao_comprometida, adulto,
    "TEC > 2 segundos com sinais de cianose",
    "A perfusão está comprometida (TEC > 2 seg com cianose)?").

discriminador(ferida_dificil_controle_sangramento, adulto,
    "Lesão com sangramento que persiste mesmo após compressão",
    "O paciente possui ferida de difícil controle de sangramento?").

discriminador(toxemiado_prostrado_ou_febril, adulto,
    "Cianótico, taquicárdico, dispneico",
    "O paciente encontra-se toxemiado, prostrado ou febril?").

discriminador(contato_produtos_quimicos_alta_letalidade, adulto,
    "Toxicidade aguda após única exposição",
    "Houve contato com produtos químicos de alta letalidade?").

discriminador(ferida_sangramento_controlado, adulto,
    "Lesão com sangramento contido após compressão",
    "O paciente possui ferida com sangramento controlado?").

discriminador(abscesso_e_febre, adulto,
    "Quebra da barreira da pele com contaminação bacteriana e febre > 38,5 °C",
    "O paciente apresenta abscesso acompanhado de febre (> 38,5 °C)?").

discriminador(placas_eritematosas_inicio_subito, adulto,
    "Rubor por vasodilatação capilar, que embranquece à pressão",
    "O paciente apresenta placas eritematosas de início súbito?").

discriminador(erupcoes_secretantes_bolhosas_com_prurido, adulto,
    "Lesões com conteúdo líquido (> 10% do corpo) com prurido",
    "O paciente tem erupções secretantes ou bolhosas em mais de 10% do corpo com prurido?").

discriminador(infeccao_secundaria, adulto,
    "Sinais flogísticos: dor, calor e rubor",
    "Há sinais de infecção secundária?").

discriminador(abscesso_sem_febre, adulto,
    "Sem flutuação e sem febre",
    "O paciente apresenta abscesso sem febre?").

discriminador(ferida_infectada, adulto,
    "Sem sinais sistêmicos",
    "O paciente possui ferida infectada, sem sinais sistêmicos?").

discriminador(ferida_superficial, adulto,
    "Lesão pequena e sem sangramento",
    "O paciente possui apenas ferida superficial?").

discriminador(estado_mental_alterado, adulto,
    "Desorientação no tempo/espaço, não reconhecimento de pessoas; incapacidade de cumprir ordens simples; pensamento desconexo.",
    "O paciente apresenta estado mental alterado?").

discriminador(saturacao_o2_menor_85, adulto,
    "Saturação de O2 < 85%",
    "A saturação de O2 é menor que 85%?").

discriminador(sinais_neurologicos_focais, adulto,
    "Paresia, parestesia, disfasia/afasia, ataxia, distúrbio do equilíbrio",
    "O paciente apresenta sinais neurológicos focais?").

discriminador(deficit_neurologico_agudo, adulto,
    "Paresia, plegia, disfagia, afasia, ataxia, paralisia facial",
    "O paciente apresenta déficit neurológico agudo?").
discriminador(deficit_neurologico_agudo, pediatria,
    "Qualquer perda de função neurológica que ocorreu nas últimas 24 horas: alteração/perda de sensibilidade, fraqueza, retenção urinária...",
    "A criança apresenta déficit neurológico agudo nas últimas 24h?").

discriminador(historia_trauma_craniano_recente, adulto,
    "TCE ocorrido há menos de 7 dias",
    "Há história de trauma craniano recente (menos de 7 dias)?").
discriminador(historia_trauma_craniano_recente, pediatria,
    "História de trauma físico envolvendo a cabeça.",
    "Há histórico de trauma cranioencefálico?").

discriminador(historia_overdose_envenenamento, adulto,
    "Uso excessivo de medicamentos ou outras substâncias",
    "Há história de overdose ou envenenamento?").
discriminador(historia_overdose_envenenamento, pediatria,
    "Esta informação pode vir de outros ou pode ser deduzida na presença de caixas de remédios vazias.",
    "Há história de overdose ou envenenamento (relatado ou por evidências locais)?").

discriminador(extrema_agitacao_alucinacoes, adulto,
    "Inquietação, excitabilidade psíquica aumentada, resposta exacerbada a estímulos, irritabilidade, atividade motora/verbal inadequada, agressividade.",
    "O paciente apresenta extrema agitação ou alucinações?").

discriminador(alteracao_temperatura, adulto,
    "Temperatura < 35 °C ou > 40 °C",
    "Há alteração de temperatura (< 35 °C ou > 40 °C)?").

discriminador(saturacao_o2_85_89, adulto,
    "Saturação de O2 entre 85% e 89%",
    "A saturação de O2 está entre 85% e 89%?").

discriminador(potencial_suicida_homicida, adulto,
    "Ideação, intenção ou plano suicida ou homicida",
    "O paciente apresenta potencial suicida ou homicida?").

discriminador(saturacao_o2_90_94, adulto,
    "Saturação de O2 entre 90% e 94%",
    "A saturação de O2 está entre 90% e 94%?").

discriminador(historia_inconsciencia, adulto,
    "Perda prévia da capacidade de permanecer alerta",
    "Há história de inconsciência prévia?").
discriminador(historia_inconsciencia, pediatria,
    "Testemunha confiável relata se paciente perdeu a consciência, ou se não se lembra do incidente",
    "Houve histórico de inconsciência relado por testemunha ou amnésia?").

discriminador(saturacao_o2_maior_igual_96, adulto,
    "Saturação de O2 >= 96%",
    "A saturação de O2 é maior ou igual a 96%?").

discriminador(vomitos_esporadicos, adulto,
    "Vômitos que ocorrem de forma não contínua",
    "O paciente apresenta vômitos esporádicos?").

% Novos de PEDIATRIA
discriminador(obstrucao_vias_aereas, pediatria,
    "Início súbito de angústia respiratória com tosse, restrição para falar, estridor, chiado (Leve ou Grave)",
    "Há sinais de obstrução de vias aéreas (angústia respiratória, tosse, estridor)?").

discriminador(falencia_respiratoria, pediatria,
    "Respiração regular silenciosa e trabalho respiratório mínimo. FR alterada para idade",
    "Há sinais de falência respiratória?").

discriminador(hemorragia_exsanguinante, pediatria,
    "Hemorragia externa grave, risco de morte",
    "Apresenta hemorragia exsanguinante?").

discriminador(mecanismo_de_trauma_significativo, pediatria,
    "Trauma penetrante ou com alta transferência de energia (impacto, queda)",
    "Há mecanismo de trauma significativo (penetrante, queda, acidente grave)?").

discriminador(dispneia_aguda, pediatria,
    "Fôlego curto ou falta de ar súbita/repentina, piora em caso crônico",
    "A criança apresenta dispneia aguda?").

discriminador(hemorragia_maior_incontrolavel, pediatria,
    "Hemorragia não rapidamente controlada por compressão, encharca curativo",
    "Apresenta hemorragia maior incontrolável?").

discriminador(alteracao_subita_estado_consciencia, pediatria,
    "Alteração de Glasgow nas últimas 12 horas",
    "Houve alteração súbita do nível de consciência nas últimas 12h?").

discriminador(hemorragia_menor_incontrolavel, pediatria,
    "Hemorragia não rapidamente controlada com sangue a fluir levemente",
    "Apresenta hemorragia menor incontrolável?").

discriminador(deficit_neurologico_novo, pediatria,
    "Perda de função neurológica há mais de 24 horas, primeira ocorrência",
    "Apresenta déficit neurológico novo (há > 24h)?").

discriminador(historia_discordante, pediatria,
    "História fornecida não explica os achados físicos; suspeita de abuso",
    "Há história discordante com os achados físicos?").

discriminador(crianca_nao_reativa, pediatria,
    "Criança apática ou hiporesponsiva no colo dos pais. Pálida, hipoativa, sonolenta ou desorientada. Não responde a estímulos dolorosos.",
    "A criança apresenta-se não reativa (apática, hiporesponsiva, sem reposta à dor)?").

discriminador(estridor, pediatria,
    "Ruído inspiratório, expiratório ou ambos, melhor escutado ao se respirar de boca aberta.",
    "A criança apresenta estridor?").

discriminador(edema_facial, pediatria,
    "Edema em toda a face ou que envolva mais de um local, tais como: pálpebra, lábios, língua ou lóbulo de orelha.",
    "Apresenta edema facial (envolve mais de um local da face)?").

discriminador(edema_de_lingua, pediatria,
    "Inchaço de língua de qualquer intensidade.",
    "Apresenta edema de língua?").

discriminador(historico_alergia_importante, pediatria,
    "Sensibilidade conhecida com reação grave (ex. nozes, camarão, picada de abelha).",
    "Tem histórico de alergia importante com reação grave?").

discriminador(frases_entrecortadas, pediatria,
    "Dificuldade respiratória tão grande que não conseguem nem articular frases curtas numa só expiração.",
    "Apresenta frases entrecortadas por dificuldade respiratória?").

discriminador(pulso_anormal, pediatria,
    "Pulso arterial muito fraco, ritmo irregular, bradicardia ou taquicardia conforme idade.",
    "O pulso está anormal (muito fraco, irregular, taquicárdico ou bradicárdico)?").

discriminador(spo2_muito_baixa, pediatria,
    "SpO2 menor que 95% em oxigenioterapia ou menor de 90% em ar ambiente.",
    "A SpO2 está muito baixa (< 90% em ar ambiente ou < 95% com O2)?").

discriminador(spo2_baixa, pediatria,
    "SpO2 entre 91% - 95% em ar ambiente.",
    "A SpO2 está baixa (91-95% em ar ambiente)?").

discriminador(erupcoes_vesiculas_disseminadas, pediatria,
    "Vesículas/bolhas distintas ou confluentes > 10% da superfície corporal (regra dos nove), prurido, envolvendo mais de uma região.",
    "Apresenta erupções ou vesículas disseminadas (> 10% da superfície corporal e prurido)?").

discriminador(deformidade, pediatria,
    "Subjetivo: angulação ou rotação anormal percebida.",
    "Há deformidade aparente (angulação ou rotação anormal)?").

discriminador(dor_leve_recente, pediatria,
    "Qualquer dor leve (1-3/10) que tenha iniciado em até 24 horas.",
    "Apresenta dor leve recente (iniciada há menos de 24h)?").

discriminador(evento_recente, pediatria,
    "Surgiu subitamente.",
    "O evento é recente (surgiu subitamente)?").

discriminador(inflamacao_local, pediatria,
    "Dor, inchaço e vermelhidão restrita a uma área definida.",
    "Há sinais de inflamação local?").

discriminador(apneia_bradipneia_movimentos_paradoxais, pediatria,
    "Interrupção da respiração associada a alteração de cor, tônus, FC, estridor, e cianose.",
    "Apresenta apneia, bradipneia ou movimentos tóraco abdominais paradoxais?").

discriminador(hiperglicemia, pediatria,
    "Glicemia > 200 mg/dl.",
    "O paciente apresenta hiperglicemia (> 200 mg/dl)?").

discriminador(hipoglicemia, pediatria,
    "Glicemia < 60 mg/dl em crianças.",
    "O paciente apresenta hipoglicemia (< 60 mg/dl)?").



discriminador(paciente_nao_responsivo, pediatria,
    "Glasgow < 8: ausência de resposta à dor, agitação psicomotora ou sinais focais.",
    "O paciente encontra-se não responsivo (Glasgow < 8)?").

discriminador(risco_alto_agredir_outros, pediatria,
    "Postura tensa, discurso ameaçador, inquietude, perda de autocontrole.",
    "Há risco alto de agredir outros?").

discriminador(risco_alto_autoagressao, pediatria,
    "Passado de autoagressão, tentando se machucar ativamente.",
    "Há risco alto de autoagressão?").

discriminador(estado_pos_ictal_ou_deficit_focal, pediatria,
    "História de convulsão na última hora associada a sonolência, liberação de esfíncteres, etc.",
    "Há estado pós-ictal ou déficit focal agudo?").

discriminador(historico_psiquiatrico_importante, pediatria,
    "História de evento ou doença psiquiátrica significativa.",
    "Há histórico psiquiátrico importante?").

discriminador(risco_moderado_agredir_outros, pediatria,
    "Risco potencial de dano a outros se há qualquer indício de potencial agressão.",
    "Há risco moderado de agredir outros?").

discriminador(risco_moderado_autoagressao, pediatria,
    "Manifesta desejo de se machucar mas não tenta ativamente (sem passado importante).",
    "Há risco moderado de autoagressão?").

discriminador(equimoses_purpura_petequias, pediatria,
    "Máculas, manchas ou erupção que não desaparecem a digito pressão ou ao teste do vidro.",
    "Apresenta equimoses, púrpura e/ou petéquias?").

discriminador(ferida_infectada_com_alteracao_temperatura, pediatria,
    "Febre > 38°C; associada a ferida com pus, odor fétido ou sinais francos de reação inflamatória.",
    "Apresenta ferida infectada acompanhada de alteração de temperatura?").

discriminador(tumefacao_dolorosa_com_alteracao_temperatura, pediatria,
    "Aumento de volume de pele e partes moles, com ou sem vermelhidão local com alteração temperatura.",
    "Apresenta tumefação dolorosa (com/sem hiperemia) com alteração de temperatura?").

discriminador(placas_eritematosas_inicio_subito, pediatria,
    "Elevações cutâneas avermelhadas; localizadas ou generalizadas; com ou sem prurido.",
    "Apresenta placas eritematosas de início súbito?").

discriminador(lesoes_bolhosas_extensas, pediatria,
    "Vesículas ou bolhas de grandes proporções que se rompem facilmente, podendo acometer as mucosas.",
    "Apresenta lesões bolhosas extensas?").

discriminador(lesao_infectada_sem_febre_tumefacao, pediatria,
    "Lesão localizada, sem febre, com pus, odor fétido, ou sinais de reação inflamatória local.",
    "Apresenta lesão infectada sem febre ou tumefação local?").

discriminador(prurido_leve, pediatria,
    "Prurido isolado ou não persistente e sem repercussões sistêmicas.",
    "Apresenta prurido leve?").

discriminador(lesao_superficial_sem_sinais_sistemicos, pediatria,
    "Escoriações; feridas fechadas e sem queixas; ausência de sintomas de infecção.",
    "Apresenta apenas lesão superficial sem sinais sistêmicos?").


discriminador(aumento_volume_articular, pediatria,
    "Dificuldade de mobilizar o membro, podendo ter sinais flogísticos (edema, calor, eritema e dor).",
    "Apresenta aumento do volume articular?").

discriminador(dispneia, pediatria,
    "Dificuldade de respirar, muitas vezes acompanhada de opressão torácica e mal-estar.",
    "Apresenta dispneia?").

discriminador(hemiparesia, pediatria,
    "Deficit motor parcial, paralisia parcial de um lado do corpo.",
    "Apresenta hemiparesia?").

discriminador(ictericia_com_dor_abdominal, pediatria,
    "Coloração amarelada da pele, mucosas ou olhos associado a dor abdominal.",
    "Apresenta icterícia associada a dor abdominal?").

discriminador(ictericia, pediatria,
    "Coloração amarelada da pele, das mucosas ou dos olhos sem febre ou dor.",
    "Apresenta icterícia?").

discriminador(dor_leve_a_moderada, pediatria,
    "Dor leve a moderada (4-6/10) em extremidades, associada a edema, melhora com analgésicos.",
    "Apresenta dor leve a moderada (4-6/10) em extremidades?").

discriminador(hematuria, pediatria,
    "Urina de coloração escura ou avermelhada devido à existência de sangue.",
    "Apresenta hematúria (urina com sangue)?").

discriminador(resposta_voz_dor_apenas, pediatria,
    "Criança que não responde ao comando verbal ou ao estímulo doloroso.",
    "A criança apresenta resposta apenas à voz ou à dor (ou ausência)?").

discriminador(prostracao_hipotonia, pediatria,
    "Pais descrevem a criança como 'molinha', tônus diminuído (cabeça caída).",
    "Apresenta prostração ou hipotonia?").

discriminador(purpura, pediatria,
    "Erupção de qualquer parte do corpo que não empalidece sob pressão (causada por hemorragias subcutâneas).",
    "Apresenta púrpura?").

discriminador(erupcao_cutanea_fixa, pediatria,
    "Erupção que não empalidece à pressão (teste do copo).",
    "Apresenta erupção cutânea fixa?").

discriminador(inconsolavel_pelos_pais, pediatria,
    "Criança cujo choro ou angústia não respondem às tentativas de acalanto dos pais.",
    "A criança está inconsolável pelos pais?").

discriminador(choro_prolongado_ininterrupto, pediatria,
    "Criança tem chorado continuamente por 2 horas ou mais.",
    "Apresenta choro prolongado ou ininterrupto (> 2h)?").

discriminador(incapaz_de_se_alimentar, pediatria,
    "Criança que não ingere adequadamente sólido ou líquido via oral.",
    "Incapaz de se alimentar adequadamente?").

discriminador(comportamento_atipico, pediatria,
    "Criança com comportamento não habitual, podendo estar indócil e irritadiça.",
    "Apresenta comportamento atípico?").

discriminador(convulsao, pediatria,
    "Pacientes que estão apresentando movimentos tônicos ou clônicos de uma crise convulsiva ou parcial à admissão.",
    "Apresenta convulsão em atividade (crise tônico-clônica ou parcial)?").

discriminador(inicio_abrupto, pediatria,
    "Início em segundos ou minutos. Pode acordar o paciente.",
    "O início foi abrupto (segundos/minutos, podendo acordar o paciente)?").

discriminador(alteracoes_sensoriais_comportamento, pediatria,
    "Glasgow entre 9-14: agitação, confusão mental, hipoatividade, desorientação, ataxia, fala desconexa, etc.",
    "Apresenta alterações sensoriais ou de comportamento (Glasgow 9-14, confusão, ataxia)?").

discriminador(sinais_focais, pediatria,
    "Perda de movimento, sensação ou função em local específico do corpo, incluindo alterações visão/audição/fala.",
    "Apresenta sinais focais?").

discriminador(perda_total_visao_aguda, pediatria,
    "Perda da visão em um ou ambos os olhos nas últimas 24 horas e que não voltou ao normal.",
    "Apresenta perda total da visão aguda (últimas 24h)?").

discriminador(sinais_de_meningismo, pediatria,
    "Rigidez de nuca associada a cefaleia e fotofobia.",
    "Apresenta sinais de meningismo?").

discriminador(vomitos_em_jato, pediatria,
    "Vômito que ocorre subitamente, sem enjoos e às vezes de maneira violenta.",
    "Apresenta vômitos em jato?").

discriminador(reducao_recente_acuidade_visual, pediatria,
    "Redução de acuidade visual corrigida nos últimos 7 dias e/ou alteração visual (lacrimejamento, diplopia, olho vermelho).",
    "Há redução recente da acuidade visual ou alterações visuais (últimos 7 dias)?").

discriminador(vomitos_sem_desidratacao, pediatria,
    "Vômitos sem presença de sinais de desidratação.",
    "O paciente apresenta vômitos sem sinais de desidratação?").

discriminador(cefaleia, pediatria,
    "Qualquer dor ao redor da cabeça não relacionada a nenhuma estrutura anatômica especial.",
    "Apresenta cefaleia?").

discriminador(trauma_ocular_penetrante, pediatria,
    "Evento traumático físico recente com perfuração do globo ocular.",
    "Apresenta trauma ocular penetrante?").

discriminador(infeccao_local, pediatria,
    "Manifesta-se geralmente como inflamação (dor, inchaço e vermelhidão) restrita a uma área, com/sem pus.",
    "Apresenta infecção local (inflamação restrita com ou sem pus)?").

discriminador(olho_vermelho, pediatria,
    "Qualquer vermelhidão do olho, podendo ou não haver dor difusa ou parcial.",
    "Apresenta olho vermelho?").

discriminador(nao_entretivel, pediatria,
    "Criança angustiada por dor ou outros fatores que são incapazes de se distrair com conversas ou brincadeiras.",
    "A criança encontra-se não entretível?").

discriminador(nao_se_alimenta, pediatria,
    "Criança que não ingere nada sólido ou líquido (como deveria) ou que se alimenta, mas vomita logo após.",
    "A criança não se alimenta ou vomita tudo o que ingere?").

discriminador(hiperglicemia_com_cetose, pediatria,
    "Glicemia > 200 mg/dl com cetonemia, cetonúria ou sinais de acidose.",
    "Apresenta hiperglicemia (> 200 mg/dl) com cetose/acidose?").

discriminador(sepse_possivel, pediatria,
    "Avaliar pulso anormal se temperatura < 38,5°C, alteração do padrão de atividade ou perfusão capilar > 2s.",
    "Apresenta risco de sepse possível (pulso alterado, febre/hipotermia, perfusão > 2s, alteração de atividade)?").

discriminador(hipotermia, pediatria,
    "Temperatura < 35°C.",
    "Apresenta hipotermia (Temperatura < 35°C)?").

discriminador(dor_precordial_ou_cardiaca, pediatria,
    "Dor no meio do peito (aperto/peso), podendo irradiar, associada a sudorese, náuseas, lipotimia.",
    "Apresenta dor precordial ou padrão cardíaco?").

discriminador(alteracao_subita_nivel_de_consciencia, pediatria,
    "Não totalmente alerta ou só responde à voz ou dor ou irresponsivo.",
    "Apresenta alteração súbita do nível de consciência (não alerta, responde só a voz/dor)?").

discriminador(retencao_urinaria, pediatria,
    "Impossibilidade de eliminar urina pela uretra associada a bexigoma. Condição dolorosa.",
    "Apresenta retenção urinária?").

discriminador(pcr_bradicardia_importante_ou_pcr_iminente, pediatria,
    "Ausência de reação; crise convulsiva; dificuldade respiratória; ausência de sons cardíacos; bradicardia < 60 associada a má perfusão, etc.",
    "Apresenta PCR, bradicardia importante ou PCR iminente?").

discriminador(cianose_central, pediatria,
    "Língua, mucosas orais e pele azuladas ou roxas.",
    "Apresenta cianose central?").

discriminador(lactente_dispneico_recusa_alimentar, pediatria,
    "Estridor; gemidos; sibilância; apneia; respiração rápida/difícil com recusa alimentar.",
    "É um lactente dispneico com recusa ou dificuldade para se alimentar?").

discriminador(trauma_direto_pescoco, pediatria,
    "Ocorreu trauma físico direto envolvendo o pescoço (carga de cima para baixo, queda na cabeça, torção).",
    "Há história de trauma direto no pescoço?").

% =========================
% ACESSO AOS DADOS
% =========================

descricao_discriminador(D, Pop, Desc) :-
    discriminador(D, Pop, Desc, _), !.
descricao_discriminador(D, Desc) :-
    discriminador(D, _, Desc, _), !.

pergunta_discriminador(D, Pop, Pergunta) :-
    discriminador(D, Pop, _, Pergunta), !.
pergunta_discriminador(D, Pergunta) :-
    discriminador(D, _, _, Pergunta), !.

todos_discriminadores(Lista) :-
    findall(D, discriminador(D, _, _, _), Lista).
