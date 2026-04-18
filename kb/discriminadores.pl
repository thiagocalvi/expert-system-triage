% =========================
% DISCRIMINADORES CLINICOS
% =========================

% discriminador(Nome, Populacao, Descricao, Pergunta)

% ---------- COMUNS (ADULTO -> PEDIATRIA) ----------
discriminador(deficit_neurologico_agudo, adulto,
    "Paresia, plegia, disfagia, afasia, ataxia, paralisia facial",
    "O paciente apresenta déficit neurológico agudo?").
discriminador(deficit_neurologico_agudo, pediatria,
    "Qualquer perda de função neurológica que ocorreu nas últimas 24 horas: alteração/perda de sensibilidade, fraqueza, retenção urinária...",
    "A criança apresenta déficit neurológico agudo nas últimas 24h?").

discriminador(disuria, adulto,
    "Dor ao urinar",
    "O paciente sente dor ao urinar?").
discriminador(disuria, pediatria,
    "Dor ou dificuldade para urinar.",
    "Apresenta disúria (dor/dificuldade ao urinar)?").

discriminador(dor_intensa, adulto,
    "Dor intolerável (8 a 10/10), frequentemente descrita como a pior já sentida. Pode estar associada com abscesso ou flutuação.",
    "A dor é intensa (8 a 10 em 10)?").
discriminador(dor_intensa, pediatria,
    "Dor abdominal, torácica, em membros, lombar, sem resposta a analgésico (7 a 10). Em crianças/bebês: choro contínuo e inconsolável, taquicárdicos.",
    "A criança apresenta dor intensa (7 a 10) ou choro contínuo inconsolável?").

discriminador(dor_leve, adulto,
    "Dor leve (1 a 4/10). Pode estar associada com abscesso ou flutuação.",
    "A dor é leve (1 a 4 em 10)?").
discriminador(dor_leve, pediatria,
    "Dor leve (1 a 3)",
    "A dor é leve (1 a 3 em 10)?").

discriminador(dor_moderada, adulto,
    "Dor suportável, porém intensa (5 a 7/10). Pode estar associada com abscesso ou flutuação.",
    "A dor é moderada (5 a 7 em 10)?").
discriminador(dor_moderada, pediatria,
    "Dor intensa, porém suportável (4 a 6). Em crianças/bebês: choram intermitentemente e são consoláveis.",
    "A criança apresenta dor moderada (4 a 6) ou choro intermitente consolável?").

discriminador(historia_inconsciencia, adulto,
    "Perda prévia da capacidade de permanecer alerta",
    "Há história de inconsciência prévia?").
discriminador(historia_inconsciencia, pediatria,
    "Testemunha confiável relata se paciente perdeu a consciência, ou se não se lembra do incidente",
    "Houve histórico de inconsciência relatado por testemunha ou amnésia?").

discriminador(historia_overdose_envenenamento, adulto,
    "Uso excessivo de medicamentos ou outras substâncias",
    "Há história de overdose ou envenenamento?").
discriminador(historia_overdose_envenenamento, pediatria,
    "Esta informação pode vir de outros ou pode ser deduzida na presença de caixas de remédios vazias.",
    "Há história de overdose ou envenenamento (relatado ou por evidências locais)?").

discriminador(historia_trauma_craniano_recente, adulto,
    "TCE ocorrido há menos de 7 dias",
    "Há história de trauma craniano recente (menos de 7 dias)?").
discriminador(historia_trauma_craniano_recente, pediatria,
    "História de trauma físico envolvendo a cabeça.",
    "Há histórico de trauma cranioencefálico?").

discriminador(placas_eritematosas_inicio_subito, adulto,
    "Rubor por vasodilatação capilar, que embranquece à pressão",
    "O paciente apresenta placas eritematosas de início súbito?").
discriminador(placas_eritematosas_inicio_subito, pediatria,
    "Elevações cutâneas avermelhadas; localizadas ou generalizadas; com ou sem prurido.",
    "Apresenta placas eritematosas de início súbito?").

discriminador(sinais_de_choque, adulto,
    "Hipotensão (PA < 80 mmHg), taquicardia (>= 140) ou bradicardia (< 40), palidez acentuada, sudorese, pele fria, pulso fino, perfusão diminuída, irritabilidade, alteração do nível de consciência e oligúria.",
    "O paciente apresenta sinais de choque?").
discriminador(sinais_de_choque, pediatria,
    "Taquicardia; palidez acentuada; pele fria; sudorese; pulso fino; perfusão diminuída; letargia; taquipneia; irritabilidade; oligúria.",
    "A criança apresenta sinais de choque?").

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

% ---------- EXCLUSIVOS ADULTO ----------
discriminador(abscesso_e_febre, adulto,
    "Quebra da barreira da pele com contaminação bacteriana e febre > 38,5 °C",
    "O paciente apresenta abscesso acompanhado de febre (> 38,5 °C)?").

discriminador(abscesso_sem_febre, adulto,
    "Sem flutuação e sem febre",
    "O paciente apresenta abscesso sem febre?").

discriminador(alteracao_temperatura, adulto,
    "Temperatura < 35 °C ou > 40 °C",
    "Há alteração de temperatura (< 35 °C ou > 40 °C)?").

discriminador(contato_produtos_quimicos_alta_letalidade, adulto,
    "Toxicidade aguda após única exposição",
    "Houve contato com produtos químicos de alta letalidade?").

discriminador(distensao_abdominal, adulto,
    "Abdômen distendido",
    "O abdômen está distendido?").

discriminador(edema_difuso_de_face, adulto,
    "Inchaço envolvendo derme profunda e tecido subcutâneo",
    "O paciente apresenta edema difuso de face?").

discriminador(erupcoes_secretantes_bolhosas_com_prurido, adulto,
    "Lesões com conteúdo líquido (> 10% do corpo) com prurido",
    "O paciente tem erupções secretantes ou bolhosas em mais de 10% do corpo com prurido?").

discriminador(estado_mental_alterado, adulto,
    "Desorientação no tempo/espaço, não reconhecimento de pessoas; incapacidade de cumprir ordens simples; pensamento desconexo.",
    "O paciente apresenta estado mental alterado?").

discriminador(estridor_laringeo_ou_dificuldade_falar, adulto,
    "Estridor: som resultante do fluxo turbulento de ar na via aérea superior",
    "O paciente apresenta estridor laríngeo ou dificuldade de falar?").

discriminador(extrema_agitacao_alucinacoes, adulto,
    "Inquietação, excitabilidade psíquica aumentada, resposta exacerbada a estímulos, irritabilidade, atividade motora/verbal inadequada, agressividade.",
    "O paciente apresenta extrema agitação ou alucinações?").

discriminador(ferida_dificil_controle_sangramento, adulto,
    "Lesão com sangramento que persiste mesmo após compressão",
    "O paciente possui ferida de difícil controle de sangramento?").

discriminador(ferida_infectada, adulto,
    "Sem sinais sistêmicos",
    "O paciente possui ferida infectada, sem sinais sistêmicos?").

discriminador(ferida_sangramento_controlado, adulto,
    "Lesão com sangramento contido após compressão",
    "O paciente possui ferida com sangramento controlado?").

discriminador(ferida_superficial, adulto,
    "Lesão pequena e sem sangramento",
    "O paciente possui apenas ferida superficial?").

discriminador(fezes_com_sangue, adulto,
    "Presença de sangue nas fezes",
    "Há sangue nas fezes?").

discriminador(infeccao_secundaria, adulto,
    "Sinais flogísticos: dor, calor e rubor",
    "Há sinais de infecção secundária?").

discriminador(perfusao_comprometida, adulto,
    "TEC > 2 segundos com sinais de cianose",
    "A perfusão está comprometida (TEC > 2 seg com cianose)?").

discriminador(potencial_suicida_homicida, adulto,
    "Ideação, intenção ou plano suicida ou homicida",
    "O paciente apresenta potencial suicida ou homicida?").

discriminador(respiracao_inadequada, adulto,
    "FR < 10 ou >= 36 irpm com incapacidade de falar; Cianose; letargia e/ou confusão mental; FC < 40 ou >= 150 bpm",
    "O paciente apresenta respiração inadequada?").

discriminador(saturacao_o2_85_89, adulto,
    "Saturação de O2 entre 85% e 89%",
    "A saturação de O2 está entre 85% e 89%?").

discriminador(saturacao_o2_90_94, adulto,
    "Saturação de O2 entre 90% e 94%",
    "A saturação de O2 está entre 90% e 94%?").

discriminador(saturacao_o2_maior_igual_95, adulto,
    "Saturação de O2 >= 95%",
    "A saturação de O2 é maior ou igual a 95%?").

discriminador(saturacao_o2_menor_85, adulto,
    "Saturação de O2 < 85%",
    "A saturação de O2 é menor que 85%?").

discriminador(sinais_neurologicos_focais, adulto,
    "Paresia, parestesia, disfasia/afasia, ataxia, distúrbio do equilíbrio",
    "O paciente apresenta sinais neurológicos focais?").

discriminador(alteracoes_glicemicas, adulto,
    "Glicemia > 500 ou < 50 mg/dL",
    "O paciente apresenta alterações glicêmicas graves (glicemia > 500 ou < 50 mg/dL)?").

discriminador(convulsao_em_atividade, adulto,
    "Contrações musculares involuntárias de todo o corpo ou de parte dele",
    "O paciente apresenta convulsão ativa?").

discriminador(crise_convulsiva_recorrente_reentrante, adulto,
    "Crises repetidas sem recuperação completa da consciência entre elas",
    "O paciente apresenta crise convulsiva recorrente (reentrante)?").

discriminador(historia_epilepsia_em_tratamento, adulto,
    "Paciente com diagnóstico de epilepsia em uso de anticonvulsivantes",
    "Há história de epilepsia em tratamento (uso de anticonvulsivantes)?").

discriminador(nenhum_determinante_convulsoes, adulto,
    "Nenhum dos determinantes anteriores",
    "Nenhum dos determinantes anteriores está presente?").

discriminador(obstrucao_vias_aereas, adulto,
    "Início súbito de grave dificuldade respiratória, sem sintomas respiratórios prévios, com secreção, sangue, corpo estranho, edema de lábios ou língua, ou obstrução/deslocamento de traqueostomia",
    "O paciente apresenta comprometimento/obstrução de vias aéreas?").

discriminador(periodo_pos_comicial, adulto,
    "Período após a crise com possível rebaixamento de consciência, confusão, desorientação ou letargia",
    "O paciente está em período pós-comicial?").

discriminador(crise_convulsiva_menos_12h_paciente_alerta, adulto,
    "Relato de episódio convulsivo recente (menos de 12 horas), sem alteração atual de consciência",
    "Houve crise convulsiva há menos de 12 horas com paciente alerta?").

discriminador(sinais_de_meningismo, adulto,
    "Rigidez de nuca e sinais radiculares (Lasègue e Kernig)",
    "O paciente apresenta sinais de meningismo?").

discriminador(alteracao_nivel_consciencia_ecg_9_13, adulto,
    "Escala de Coma de Glasgow entre 9 e 13",
    "O paciente apresenta alteração do nível de consciência (ECG 9-13)?").

discriminador(alteracao_nivel_consciencia_ecg_menor_9, adulto,
    "Escala de Coma de Glasgow menor que 9",
    "O paciente apresenta alteração grave do nível de consciência (ECG < 9)?").

discriminador(cefaleia_intensa_inicio_subito, adulto,
    "Cefaleia intensa de início súbito (8-10/10), descrita como a pior dor de cabeça da vida",
    "O paciente apresenta cefaleia intensa de início súbito (8-10/10)?").

discriminador(dispneia_aguda, adulto,
    "Dificuldade respiratória de início súbito",
    "O paciente apresenta dispneia aguda?").

discriminador(disturbio_subito_equilibrio, adulto,
    "Distúrbio súbito do equilíbrio associado a náuseas e vômitos",
    "O paciente apresenta distúrbio súbito do equilíbrio com náuseas e vômitos?").

discriminador(dor_toracica_tipica, adulto,
    "Dor intensa em aperto ou peso no centro do peito, irradiando para braço esquerdo ou pescoço, podendo associar-se a sudorese, náuseas e epigastralgia",
    "O paciente apresenta dor torácica típica?").

discriminador(historia_importante_alergia, adulto,
    "Relato de reação alérgica significativa prévia",
    "Há história importante de alergia?").

discriminador(parestesias_bilaterais_ou_migratorias, adulto,
    "Sensações cutâneas subjetivas (frio, calor, formigamento, pressão) percebidas espontaneamente, bilaterais ou migratórias",
    "O paciente apresenta parestesias bilaterais ou migratórias?").

discriminador(pos_comicial_sem_rebaixamento_grave, adulto,
    "Período após crise convulsiva com possível confusão, sem rebaixamento grave de consciência",
    "O paciente está em pós-comicial sem rebaixamento grave?").

discriminador(pos_comicial_com_rebaixamento, adulto,
    "Período após crise convulsiva com perda de consciência, confusão importante ou letargia",
    "O paciente está em pós-comicial com rebaixamento?").

discriminador(primeira_crise_convulsiva, adulto,
    "Primeiro episódio convulsivo relatado",
    "Trata-se de primeira crise convulsiva?").

discriminador(pulso_filiforme, adulto,
    "Pulso arterial muito fraco",
    "O paciente apresenta pulso filiforme?").

discriminador(rigidez_nuca_hipertonicidade, adulto,
    "Incapacidade de flexionar a cabeça devido à rigidez muscular e resistência à movimentação passiva",
    "O paciente apresenta rigidez de nuca ou hipertonicidade?").

discriminador(alteracao_temperatura_35_38_5, adulto,
    "Temperatura < 35 °C ou > 38,5 °C",
    "Há alteração de temperatura (< 35 °C ou > 38,5 °C)?").

discriminador(evento_inicio_menos_6h, adulto,
    "Evento com início há menos de 6 horas",
    "O evento teve início há menos de 6 horas?").

discriminador(fezes_enegrecidas_ou_geleia_de_groselha, adulto,
    "Presença de sangue nas fezes (escurecido ou com coágulos), com aspecto enegrecido ou em geleia de groselha",
    "O paciente apresenta fezes enegrecidas ou em geleia de groselha?").

discriminador(sinais_desidratacao, adulto,
    "Diminuição da diurese, diminuição da turgidez da pele, fraqueza, tontura, boca e língua secas",
    "O paciente apresenta sinais de desidratação?").

discriminador(vomito_com_sangue_repercussao_hemodinamica, adulto,
    "Grande quantidade de sangue no vômito associada a instabilidade hemodinâmica (PA sistólica < 80 mmHg, FC > 140 bpm ou FC < 40 bpm)",
    "O paciente apresenta vômito com sangue e repercussão hemodinâmica?").

discriminador(sinais_de_choque_fc_150, adulto,
    "PA sistólica < 80 mmHg, taquicardia (FC >= 150 bpm) ou bradicardia (FC < 40 bpm), palidez acentuada, sudorese, pele fria, pulso fino, perfusão diminuída, irritabilidade, alteração do nível de consciência e oligúria",
    "O paciente apresenta sinais de choque com FC >= 150 bpm ou FC < 40 bpm?").

discriminador(dor_irradiando_para_dorso, adulto,
    "Dor com irradiação para o dorso",
    "A dor irradia para o dorso?").

discriminador(dor_epigastrica, adulto,
    "Dor localizada em região epigástrica",
    "O paciente apresenta dor epigástrica?").

discriminador(historia_vomito_com_sangue_menos_6h, adulto,
    "História de vômito com sangue nas últimas 6 horas",
    "Há história de vômito com sangue há menos de 6 horas?").

discriminador(sangramento_vaginal, adulto,
    "Sangramento vaginal",
    "Há sangramento vaginal?").

discriminador(possivel_gravidez, adulto,
    "Possibilidade de gestação atual",
    "Há possibilidade de gravidez?").

discriminador(irradiacao_para_ombro, adulto,
    "Dor com irradiação para ombro",
    "A dor irradia para o ombro?").

discriminador(manifestacoes_hemorragicas, adulto,
    "Presença de petéquias, equimoses ou sangramentos espontâneos",
    "O paciente apresenta manifestações hemorrágicas?").

discriminador(evento_recente_menos_7_dias, adulto,
    "Início dos sintomas há menos de 7 dias",
    "O evento é recente (início há menos de 7 dias)?").

discriminador(trauma_direto_pescoco, adulto,
    "Traumatismo direto em garganta, nuca ou região supraclavicular",
    "Houve trauma direto no pescoço?").

discriminador(perda_aguda_completa_visao, adulto,
    "Perda aguda completa da visão",
    "O paciente apresenta perda aguda completa da visão?").

discriminador(nauseas_vomitos_associados_dor, adulto,
    "Náuseas e vômitos associados à dor",
    "O paciente apresenta náuseas e vômitos associados à dor?").

discriminador(diminuicao_recente_visao, adulto,
    "Diminuição recente da visão",
    "O paciente apresenta diminuição recente da visão?").

discriminador(toxemiado_prostrado_ou_febril, adulto,
    "Cianótico, taquicárdico, dispneico",
    "O paciente encontra-se toxemiado, prostrado ou febril?").

discriminador(vomitos_esporadicos, adulto,
    "Vômitos que ocorrem de forma não contínua",
    "O paciente apresenta vômitos esporádicos?").

% ---------- EXCLUSIVOS PEDIATRIA ----------
discriminador(acidente_animal_peconhento_acometimento_sistemico, pediatria,
    "Acidente ofídico, escorpiônico ou aracnídeo com toxemia e sinais sistêmicos: apatia, hiporresponsividade, palidez, hipoatividade, sonolência ou desorientação.",
    "Houve acidente com animal peçonhento com acometimento sistêmico?").

discriminador(acidente_animal_peconhento_sinais_locais, pediatria,
    "Acidente ofídico, escorpiônico ou aracnídeo sem toxemia, com sinais e sintomas locais.",
    "Houve acidente com animal peçonhento com sinais e sintomas locais?").

discriminador(acidente_rabico_potencial, pediatria,
    "Arranhadura ou lambedura em mucosa ou pele não íntegra por cães, gatos, morcegos ou outros animais silvestres, inclusive domiciliados.",
    "Há acidente rábico potencial (arranhadura/lambedura em mucosa ou pele não íntegra)?").

discriminador(agitacao_psicomotora, pediatria,
    "Movimentos involuntários e sem propósito relacionados à tensão mental e ansiedade.",
    "Apresenta agitação psicomotora?").

discriminador(alteracao_subita_estado_consciencia, pediatria,
    "Alteração de Glasgow nas últimas 12 horas",
    "Houve alteração súbita do nível de consciência nas últimas 12h?").

discriminador(alteracao_subita_nivel_de_consciencia, pediatria,
    "Não totalmente alerta ou só responde à voz ou dor ou irresponsivo.",
    "Apresenta alteração súbita do nível de consciência (não alerta, responde só a voz/dor)?").

discriminador(alteracoes_sensoriais_comportamento, pediatria,
    "Glasgow entre 9-14: agitação, confusão mental, hipoatividade, desorientação, ataxia, fala desconexa, etc.",
    "Apresenta alterações sensoriais ou de comportamento (Glasgow 9-14, confusão, ataxia)?").

discriminador(amputacao_traumatica_de_membros, pediatria,
    "Perda traumática de um ou mais segmentos de membros.",
    "Há amputação traumática de membro(s)?").

discriminador(apneia_bradipneia_movimentos_paradoxais, pediatria,
    "Interrupção da respiração por 20 segundos ou por qualquer tempo quando associada a alteração de cor, tônus muscular ou frequência cardíaca; com dificuldade respiratória, sialorreia intensa, estridor, voz abafada ou cianose.",
    "Apresenta apneia, bradipneia ou movimentos tóraco abdominais paradoxais?").

discriminador(artralgia_com_limitacao_sinais_flogisticos, pediatria,
    "Dor nas articulações associadas a edema, rubor e calor local.",
    "Apresenta artralgia com limitação e sinais flogísticos?").

discriminador(artralgia_sem_sinais_flogisticos, pediatria,
    "Dor nas articulações sem edema, rubor ou calor.",
    "Apresenta artralgia sem sinais flogísticos?").

discriminador(aumento_volume_articular, pediatria,
    "Dificuldade de mobilizar o membro, podendo ter sinais flogísticos (edema, calor, eritema e dor).",
    "Apresenta aumento do volume articular?").

discriminador(autoflagelacao, pediatria,
    "Ato de causar dor ou ferimento em si próprio.",
    "Há autoflagelação (autoagressão física)?").

discriminador(avulsao_dentaria_aguda, pediatria,
    "Avulsão de um dente inteiro ocorrida nas últimas 24 horas.",
    "Houve avulsão dentária aguda (dente inteiro arrancado nas últimas 24h)?").

discriminador(cefaleia, pediatria,
    "Qualquer dor ao redor da cabeça não relacionada a nenhuma estrutura anatômica especial.",
    "Apresenta cefaleia?").

discriminador(cefaleia_intensa, pediatria,
    "Dor intensa ao redor da cabeça, não relacionada a nenhuma estrutura anatômica especial.",
    "Apresenta cefaleia intensa?").

discriminador(cefaleia_moderada, pediatria,
    "Dor moderada ao redor da cabeça, não relacionada a nenhuma estrutura anatômica especial.",
    "Apresenta cefaleia moderada?").

discriminador(celulite_periorbitaria, pediatria,
    "Processo infeccioso nos tecidos das pálpebras, superior ao septo orbitário.",
    "Apresenta sinais de celulite periorbitária?").

discriminador(choro_prolongado_ininterrupto, pediatria,
    "Criança tem chorado continuamente por 2 horas ou mais.",
    "Apresenta choro prolongado ou ininterrupto (> 2h)?").

discriminador(cianose_central, pediatria,
    "Língua, mucosas orais e pele azuladas ou roxas.",
    "Apresenta cianose central?").

discriminador(cianose_pequenos_esforcos, pediatria,
    "Língua, mucosas orais e pele azuladas ou roxas ao comer, falar ou andar.",
    "Apresenta cianose aos pequenos esforços?").

discriminador(colicas, pediatria,
    "Dores intermitentes em região pélvica.",
    "Apresenta cólicas (dores intermitentes na região pélvica)?").

discriminador(comportamento_atipico, pediatria,
    "Criança com comportamento não habitual, podendo estar indócil e irritadiça.",
    "Apresenta comportamento atípico?").

discriminador(coceira_intensa, pediatria,
    "Prurido intenso, persistente e de difícil alívio.",
    "Apresenta coceira intensa?").

discriminador(comprometimento_vascular_distal, pediatria,
    "Palidez ou cianose, pele fria, alteração da sensibilidade e dor com ou sem ausência de pulso distal à lesão.",
    "Apresenta comprometimento vascular distal?").

discriminador(contato_produto_quimico_alta_letalidade, pediatria,
    "Alta probabilidade de a substância causar óbito ou doença grave (raticidas, agrotóxicos, pesticidas, plantas ou medicamentos).",
    "Houve contato com produto químico de alta letalidade?").

discriminador(convulsao, pediatria,
    "Pacientes que estão apresentando movimentos tônicos ou clônicos de uma crise convulsiva ou parcial à admissão.",
    "Apresenta convulsão em atividade (crise tônico-clônica ou parcial)?").

discriminador(convulsao_em_atividade, pediatria,
    "Crise convulsiva em curso à admissão (movimentos tônicos e/ou clônicos, generalizados ou parciais).",
    "Apresenta convulsão em atividade no momento da admissão?").

discriminador(crianca_nao_reativa, pediatria,
    "Criança apática ou hiporesponsiva no colo dos pais. Pálida, hipoativa, sonolenta ou desorientada. Não responde a estímulos dolorosos.",
    "A criança apresenta-se não reativa (apática, hiporesponsiva, sem reposta à dor)?").

discriminador(deficit_neurologico_novo, pediatria,
    "Perda de função neurológica há mais de 24 horas, primeira ocorrência",
    "Apresenta déficit neurológico novo (há > 24h)?").

discriminador(deformidade, pediatria,
    "Subjetivo: angulação ou rotação anormal percebida.",
    "Há deformidade aparente (angulação ou rotação anormal)?").

discriminador(deformidade_grosseira, pediatria,
    "Angulação ou rotação grosseira e claramente anormal percebida no membro.",
    "Há deformidade grosseira (angulação/rotação grosseiramente anormal)?").

discriminador(desidratacao, pediatria,
    "Dois ou mais sinais de alerta para desidratação (irritado/intranquilo, olhos fundos, sem lágrimas, sede intensa, prega cutânea de retorno lento, pulso rápido e fraco).",
    "Apresenta desidratação?").

discriminador(desidratacao_grave, pediatria,
    "Dois ou mais sinais de desidratação grave, incluindo pelo menos um sinal maior (comatoso/hipotônico, olhos muito fundos, sem lágrimas, incapaz de beber, prega cutânea > 2s, pulso muito fraco/ausente).",
    "Apresenta desidratação grave?").

discriminador(diarreia_prolongada, pediatria,
    "Diarreia por mais de 15 dias, sem sinais de desidratação.",
    "Apresenta diarreia > 15 dias sem desidratação?").

discriminador(diarreia_sanguinolenta_prolongada, pediatria,
    "Diarreia com sangue por mais de 15 dias, sem sinais de desidratação.",
    "Apresenta diarreia sanguinolenta > 15 dias sem desidratação?").

discriminador(dificuldade_de_andar, pediatria,
    "Dificuldade de andar pela dor.",
    "Apresenta dificuldade de andar devido à dor?").

discriminador(diplopia, pediatria,
    "Visão dupla.",
    "Apresenta diplopia (visão dupla)?").

discriminador(disfagia_importante, pediatria,
    "Dor à deglutição de alimentos ou da própria saliva; associada a sinais de desidratação moderada.",
    "Apresenta disfagia importante (dor ao engolir com desidratação)?").

discriminador(dispneia, pediatria,
    "Dificuldade de respirar, muitas vezes acompanhada de opressão torácica e mal-estar.",
    "Apresenta dispneia?").

discriminador(dispneia_aguda, pediatria,
    "Fôlego curto ou falta de ar súbita/repentina, piora em caso crônico",
    "A criança apresenta dispneia aguda?").

discriminador(dispneia_leve, pediatria,
    "Dificuldade em respirar com sensação de respiração incompleta, opressão torácica e mal estar.",
    "Apresenta dispneia leve?").

discriminador(dispneia_moderada_intensa, pediatria,
    "BAN; tiragens subcostais; gemência; histórico de asma quase fatal ou internações por crise grave com intubação.",
    "Apresenta dispneia moderada ou intensa?").

discriminador(disturbio_coagulacao, pediatria,
    "Distúrbio de coagulação congênito ou adquirido por doença hematológica ou terapêutica.",
    "Há distúrbio de coagulação?").

discriminador(disuria_intensa_polaciuria_hematuria, pediatria,
    "Dor/ardência ao urinar com vontade frequente mas em pequenas quantidades, podendo ter urina avermelhada.",
    "Apresenta disúria intensa com polaciúria e/ou hematúria?").

discriminador(dor_abdominal, pediatria,
    "Qualquer dor sentida no abdome.",
    "Apresenta dor abdominal?").

discriminador(dor_leve_a_moderada, pediatria,
    "Dor leve a moderada (4-6/10) em extremidades, associada a edema, melhora com analgésicos.",
    "Apresenta dor leve a moderada (4-6/10) em extremidades?").

discriminador(dor_leve_recente, pediatria,
    "Qualquer dor leve (1-3/10) que tenha iniciado em até 24 horas.",
    "Apresenta dor leve recente (iniciada há menos de 24h)?").

discriminador(dor_muscular, pediatria,
    "Sintomas respiratórios leves com relato ou sinais de dor muscular.",
    "Apresenta dor muscular?").

discriminador(dor_panturrilhas_prejuizo_marcha, pediatria,
    "Dor à deambulação ou ao ficar em pé.",
    "Apresenta dor nas panturrilhas com prejuízo na marcha?").

discriminador(dor_pleuritica, pediatria,
    "Dor localizada no peito que piora com respiração, tosse ou espirro.",
    "Apresenta dor pleurítica (piora para respirar, tossir ou espirrar)?").

discriminador(dor_precordial_ou_cardiaca, pediatria,
    "Dor no meio do peito (aperto/peso), podendo irradiar, associada a sudorese, náuseas, lipotimia.",
    "Apresenta dor precordial ou padrão cardíaco?").

discriminador(dor_referida_melhora_repouso, pediatria,
    "Dor relatada há mais de 7 dias e/ou que melhora ao repouso.",
    "Apresenta dor referida ou que melhora com repouso (> 7 dias)?").

discriminador(dor_superficial_cronica_compressao, pediatria,
    "Dor muscular sob pressão.",
    "Apresenta dor superficial crônica à compressão?").

discriminador(edema, pediatria,
    "Inchaço, aumento anormal de tamanho em segmento corporal.",
    "Apresenta edema (inchaço/aumento anormal de tamanho)?").

discriminador(edema_de_lingua, pediatria,
    "Inchaço de língua de qualquer intensidade.",
    "Apresenta edema de língua?").

discriminador(edema_facial, pediatria,
    "Edema em toda a face ou que envolva mais de um local, tais como: pálpebra, lábios, língua ou lóbulo de orelha.",
    "Apresenta edema facial (envolve mais de um local da face)?").

discriminador(edema_labial_lingua_garganta_fechando, pediatria,
    "Início súbito associado a ingestão de alimentos/medicamentos com histórico de alergia, ou exposição a inalantes.",
    "Apresenta edema labial e/ou de língua com sensação de garganta fechando?").

discriminador(enfisema_subcutaneo, pediatria,
    "Ar debaixo da pele, detectado por sensação de crepitação ao toque.",
    "Apresenta enfisema subcutâneo (crepitação sob a pele)?").

discriminador(epistaxe_sem_controle_tamponamento, pediatria,
    "Sangramento nasal persistente mesmo após tentativa de hemostasia com tamponamento.",
    "Apresenta epistaxe sem controle após tamponamento?").

discriminador(equimoses_purpura_petequias, pediatria,
    "Máculas, manchas ou erupção que não desaparecem a digito pressão ou ao teste do vidro.",
    "Apresenta equimoses, púrpura e/ou petéquias?").

discriminador(erupcao_cutanea_fixa, pediatria,
    "Erupção que não empalidece à pressão (teste do copo).",
    "Apresenta erupção cutânea fixa?").

discriminador(erupcoes_vesiculas_disseminadas, pediatria,
    "Vesículas/bolhas distintas ou confluentes > 10% da superfície corporal (regra dos nove), prurido, envolvendo mais de uma região.",
    "Apresenta erupções ou vesículas disseminadas (> 10% da superfície corporal e prurido)?").

discriminador(estado_pos_ictal_ou_deficit_focal, pediatria,
    "História de convulsão na última hora associada a sonolência, liberação de esfíncteres, etc.",
    "Há estado pós-ictal ou déficit focal agudo?").

discriminador(estridor, pediatria,
    "Ruído inspiratório, expiratório ou ambos, melhor escutado ao se respirar de boca aberta.",
    "A criança apresenta estridor?").

discriminador(estridor_laringeo_dificuldade_falar_mamar, pediatria,
    "Ruído inspiratório; respiração prejudicada pela fala ou durante a sucção ao mamar.",
    "Apresenta estridor laríngeo e dificuldade de falar ou mamar?").

discriminador(evacuacao_sangue_vivo_ou_alterado, pediatria,
    "Evacuação de sangue vivo ou alterado, sugerindo sangramento gastrintestinal ativo e/ou maciço.",
    "Apresenta evacuação de sangue vivo ou alterado?").

discriminador(evento_recente, pediatria,
    "Surgiu subitamente.",
    "O evento é recente (surgiu subitamente)?").

discriminador(falencia_respiratoria, pediatria,
    "Respiração regular silenciosa e trabalho respiratório mínimo. FR alterada para idade",
    "Há sinais de falência respiratória?").

discriminador(ferida_infectada_com_alteracao_temperatura, pediatria,
    "Febre > 38°C; associada a ferida com pus, odor fétido ou sinais francos de reação inflamatória.",
    "Apresenta ferida infectada acompanhada de alteração de temperatura?").

discriminador(ferida_pequena_sem_sangramento, pediatria,
    "Mordedura pequena sem hemorragia associada.",
    "Apresenta ferida pequena sem sangramento?").

discriminador(ferida_profunda, pediatria,
    "Ferida profunda sem perda de substância.",
    "Apresenta ferida profunda sem perda de substância?").

discriminador(ferimento_extenso, pediatria,
    "Escoriações e/ou feridas de grande proporção.",
    "Há ferimento extenso?").

discriminador(ferimento_extenso_mordedura_ou_area_critica, pediatria,
    "Ferida por mordedura humana ou animal sem perda de substância, mas extensa ou em área crítica.",
    "Apresenta ferimento extenso por mordedura ou em área crítica?").

discriminador(fezes_ou_vomitos_com_sangue, pediatria,
    "Fezes com sangramento vivo e / ou vômitos sanguinolentos.",
    "Apresenta fezes com sangramento vivo e/ou vômitos sanguinolentos?").

discriminador(frases_entrecortadas, pediatria,
    "Dificuldade respiratória tão grande que não conseguem nem articular frases curtas numa só expiração.",
    "Apresenta frases entrecortadas por dificuldade respiratória?").

discriminador(fratura_exposta, pediatria,
    "Ferida ao redor da fratura com possibilidade de comunicação com o osso fraturado.",
    "Há suspeita de fratura exposta (ferida comunicando com a fratura)?").

discriminador(fratura_exposta_ou_com_deformidade, pediatria,
    "Fratura exposta e/ou com deformidade evidente.",
    "Há fratura exposta e/ou com deformidade?").

discriminador(gangrena_escroto, pediatria,
    "Pele necrosada enegrecida em torno do escroto e virilha.",
    "Apresenta gangrena de escroto?").

discriminador(hematese, pediatria,
    "Vômito de sangue vivo ou de sangue alterado (borra de café).",
    "Apresenta hematese (vômito de sangue)?").

discriminador(hematoma_de_orelha, pediatria,
    "Hematoma geralmente pós-traumático na orelha.",
    "Apresenta hematoma de orelha?").

discriminador(hematoquezia, pediatria,
    "Presença de sangue avermelhado a marrom nas fezes (hemorragia próxima ao reto).",
    "Apresenta hematoquezia (sangue vivo nas fezes)?").

discriminador(hematuria, pediatria,
    "Urina de coloração escura ou avermelhada devido à existência de sangue.",
    "Apresenta hematúria (urina com sangue)?").

discriminador(hematuria_fraca, pediatria,
    "Urina escura ou avermelhada por pequena quantidade de sangue.",
    "Apresenta hematúria fraca (pequena quantidade de sangue na urina)?").

discriminador(hematuria_grave, pediatria,
    "Urina escura ou avermelhada por grande quantidade de sangue.",
    "Apresenta hematúria grave (grande quantidade de sangue na urina)?").

discriminador(historico_convulsao, pediatria,
    "Histórico prévio de episódio convulsivo relatado por responsável ou documentação clínica.",
    "Há histórico de convulsão?").

discriminador(hemiparesia, pediatria,
    "Deficit motor parcial, paralisia parcial de um lado do corpo.",
    "Apresenta hemiparesia?").

discriminador(hemorragia_auricular_visivel, pediatria,
    "Sangramento visível no ouvido, podendo indicar presença de corpo estranho ou lesão local.",
    "Apresenta hemorragia auricular visível?").

discriminador(hemorragia_exsanguinante, pediatria,
    "Hemorragia externa grave, risco de morte",
    "Apresenta hemorragia exsanguinante?").

discriminador(hemorragia_grave, pediatria,
    "Perda de grande volume sanguíneo com sinais de choque.",
    "Apresenta hemorragia grave (com sinais de choque)?").

discriminador(hemorragia_leve_controlada, pediatria,
    "Mordedura com hemorragia leve associada a ferida pequena, controlada por compressão.",
    "Há hemorragia leve controlada associada a mordedura?").

discriminador(hemorragia_maior_incontrolavel, pediatria,
    "Hemorragia não rapidamente controlada por compressão, encharca curativo",
    "Apresenta hemorragia maior incontrolável?").

discriminador(hemorragia_menor_incontrolavel, pediatria,
    "Hemorragia não rapidamente controlada com sangue a fluir levemente",
    "Apresenta hemorragia menor incontrolável?").

discriminador(hiperglicemia, pediatria,
    "Glicemia > 200 mg/dl.",
    "O paciente apresenta hiperglicemia (> 200 mg/dl)?").

discriminador(hiperglicemia_com_cetose, pediatria,
    "Glicemia > 200 mg/dl com cetonemia, cetonúria ou sinais de acidose.",
    "Apresenta hiperglicemia (> 200 mg/dl) com cetose/acidose?").

discriminador(hipoglicemia, pediatria,
    "Glicemia < 60 mg/dl em crianças.",
    "O paciente apresenta hipoglicemia (< 60 mg/dl)?").

discriminador(hipotermia, pediatria,
    "Temperatura < 35°C.",
    "Apresenta hipotermia (Temperatura < 35°C)?").

discriminador(historia_discordante, pediatria,
    "História fornecida não explica os achados físicos; suspeita de abuso",
    "Há história discordante com os achados físicos?").

discriminador(historico_agudo_vomito_sangue, pediatria,
    "Presença de vômito com sangue nas últimas 24 horas.",
    "Há histórico agudo de vômito com sangue (últimas 24h)?").

discriminador(historico_alergia_importante, pediatria,
    "Sensibilidade conhecida com reação grave (ex. nozes, camarão, picada de abelha).",
    "Tem histórico de alergia importante com reação grave?").

discriminador(historico_cardiaco_importante, pediatria,
    "Arritmia recorrente ameaçadora à vida ou cardiopatia previamente conhecida com risco de deterioração rápida.",
    "Há histórico cardíaco importante (arritmia grave recorrente ou cardiopatia conhecida)?").

discriminador(historico_hemorragia_digestiva, pediatria,
    "Qualquer passado de sangramento digestivo maciço ou associado a varizes esofagianas.",
    "Há histórico de hemorragia digestiva importante?").

discriminador(historico_psiquiatrico_importante, pediatria,
    "História de evento ou doença psiquiátrica significativa.",
    "Há histórico psiquiátrico importante?").

discriminador(historico_tentativas_recorrentes_de_suicidio, pediatria,
    "Histórico de tentativas anteriores e recorrentes de suicídio.",
    "Há histórico de tentativas recorrentes de suicídio?").

discriminador(ictericia, pediatria,
    "Coloração amarelada da pele, das mucosas ou dos olhos sem febre ou dor.",
    "Apresenta icterícia?").

discriminador(ictericia_com_dor_abdominal, pediatria,
    "Coloração amarelada da pele, mucosas ou olhos associado a dor abdominal.",
    "Apresenta icterícia associada a dor abdominal?").

discriminador(ideacao_suicida, pediatria,
    "Pensamento, consideração ou planejamento de suicídio.",
    "Apresenta ideação suicida?").

discriminador(inalacao_de_fumaca, pediatria,
    "Inalação em ambiente confinado com fumaça/produtos químicos ou sinais de queimadura de vias aéreas.",
    "Há inalação de fumaça ou suspeita de queimadura de vias aéreas?").

discriminador(incapaz_de_andar, pediatria,
    "Paciente incapaz de andar pela dor.",
    "Está incapaz de andar devido à dor?").

discriminador(incapaz_de_se_alimentar, pediatria,
    "Criança que não ingere adequadamente sólido ou líquido via oral.",
    "Incapaz de se alimentar adequadamente?").

discriminador(inconsolavel_pelos_pais, pediatria,
    "Criança cujo choro ou angústia não respondem às tentativas de acalanto dos pais.",
    "A criança está inconsolável pelos pais?").

discriminador(infeccao_local, pediatria,
    "Manifesta-se geralmente como inflamação (dor, inchaço e vermelhidão) restrita a uma área, com/sem pus.",
    "Apresenta infecção local (inflamação restrita com ou sem pus)?").

discriminador(infeccao_ou_inflamacao_local, pediatria,
    "Lesão localizada, sem febre, com pus, odor fétido ou sinais de reação inflamatória local (lesão quente, muito vermelha ou dolorosa).",
    "Apresenta infecção ou inflamação local da lesão?").

discriminador(inflamacao_local, pediatria,
    "Dor, inchaço e vermelhidão restrita a uma área definida.",
    "Há sinais de inflamação local?").

discriminador(ingestao_substancia, pediatria,
    "Ingestão de alguma substância, mesmo se há desconhecimento do produto e da quantidade ingerida.",
    "Houve ingestão de alguma substância?").

discriminador(ingestao_objeto_perigoso, pediatria,
    "Ingestão de objeto com potencial de risco (cortante, perfurante, bateria, ímã ou tóxico).",
    "Houve ingestão de objeto perigoso?").

discriminador(ingestao_ou_exposicao_substancias_menos_6h, pediatria,
    "Ingestão ou exposição a substâncias com menos de 6 horas do evento.",
    "Houve ingestão ou exposição a substâncias há menos de 6 horas?").

discriminador(inicio_abrupto, pediatria,
    "Início em segundos ou minutos. Pode acordar o paciente.",
    "O início foi abrupto (segundos/minutos, podendo acordar o paciente)?").

discriminador(lactente_dispneico_recusa_alimentar, pediatria,
    "Estridor; gemidos; sibilância; apneia; respiração rápida/difícil com recusa alimentar.",
    "É um lactente dispneico com recusa ou dificuldade para se alimentar?").

discriminador(lesao_grandes_vasos_ou_hemorragia_grave, pediatria,
    "Lesões com sangramento visível apesar de compressão, em jatos ou esguichos de sangue.",
    "Há lesão de grandes vasos ou hemorragia grave (sangramento em jatos/esguichos)?").

discriminador(lesao_infectada_sem_febre_tumefacao, pediatria,
    "Lesão localizada, sem febre, com pus, odor fétido, ou sinais de reação inflamatória local.",
    "Apresenta lesão infectada sem febre ou tumefação local?").

discriminador(lesao_ocular_quimica, pediatria,
    "Substância que atingiu os olhos nas últimas 24 horas causando dor, queimação ou redução da visão.",
    "Há lesão ocular química (substância nos olhos)?").

discriminador(lesao_superficial_sem_sinais_sistemicos, pediatria,
    "Escoriações; feridas fechadas e sem queixas; ausência de sintomas de infecção.",
    "Apresenta apenas lesão superficial sem sinais sistêmicos?").

discriminador(lesoes_bolhosas_extensas, pediatria,
    "Vesículas ou bolhas de grandes proporções que se rompem facilmente, podendo acometer as mucosas.",
    "Apresenta lesões bolhosas extensas?").

discriminador(mecanismo_de_trauma_significativo, pediatria,
    "Trauma penetrante ou com alta transferência de energia (impacto, queda)",
    "Há mecanismo de trauma significativo (penetrante, queda, acidente grave)?").

discriminador(mecanismo_de_alta_energia, pediatria,
    "Acidentes automobilísticos, queda de grandes alturas, queda de bicicleta com desaceleração e trauma importante.",
    "Há mecanismo de alta energia?").

discriminador(melena, pediatria,
    "Sangramento escuro nas fezes, sugere fonte em trato gastrointestinal superior.",
    "Apresenta melena (fezes escuras com sangue)?").

discriminador(melena_ou_groselha, pediatria,
    "Melena (fezes escuras) ou fezes em groselha (vermelho escuro), comum em intussuscepção.",
    "Apresenta melena ou fezes em groselha?").

discriminador(mutilacao, pediatria,
    "Amputação ou perda de partes corporais por mordedura humana ou animal.",
    "Houve mutilação com amputação ou perda de parte corporal por mordedura?").

discriminador(nao_entretivel, pediatria,
    "Criança angustiada por dor ou outros fatores que são incapazes de se distrair com conversas ou brincadeiras.",
    "A criança encontra-se não entretível?").

discriminador(nao_reage_aos_pais, pediatria,
    "Não reage ao rosto ou à voz dos pais; pode apresentar resposta anormal e aparente perda de reconhecimento.",
    "A criança não reage aos pais (rosto/voz) ou parece não reconhecê-los?").

discriminador(nao_se_alimenta, pediatria,
    "Criança que não ingere nada sólido ou líquido (como deveria) ou que se alimenta, mas vomita logo após.",
    "A criança não se alimenta ou vomita tudo o que ingere?").

discriminador(obnubilado, pediatria,
    "Rebaixamento do nível de consciência com resposta lenta ou ausente a estímulos externos.",
    "A criança está obnubilada?").

discriminador(obstrucao_vias_aereas, pediatria,
    "Início súbito de angústia respiratória com tosse, restrição para falar, estridor, chiado (Leve ou Grave)",
    "Há sinais de obstrução de vias aéreas (angústia respiratória, tosse, estridor)?").

discriminador(olho_vermelho, pediatria,
    "Qualquer vermelhidão do olho, podendo ou não haver dor difusa ou parcial.",
    "Apresenta olho vermelho?").

discriminador(otorreia, pediatria,
    "Saída de secreção pelo ouvido.",
    "Apresenta otorreia (saída de secreção pelo ouvido)?").

discriminador(paciente_nao_responsivo, pediatria,
    "Glasgow < 8: ausência de resposta à dor, agitação psicomotora ou sinais focais.",
    "O paciente encontra-se não responsivo (Glasgow < 8)?").

discriminador(palpitacao_atual, pediatria,
    "Sensação de coração acelerado que ainda está presente no momento da classificação.",
    "Apresenta palpitação atual (coração acelerado neste momento)?").

discriminador(pcr_bradicardia_importante_ou_pcr_iminente, pediatria,
    "Ausência de reação; crise convulsiva; dificuldade respiratória; ausência de sons cardíacos; bradicardia < 60 associada a má perfusão, etc.",
    "Apresenta PCR, bradicardia importante ou PCR iminente?").

discriminador(pele_critica, pediatria,
    "Fratura ou deslocamento com fragmento ósseo pressionando a pele, que fica pálida e sob tensão, com risco de perda de viabilidade.",
    "Há pele crítica (pele pálida/tensa por pressão de fratura ou deslocamento)?").

discriminador(pequena_hemorragia, pediatria,
    "Hemorragia de origem venosa, de pequeno volume.",
    "Apresenta pequena hemorragia (origem venosa)?").

discriminador(perda_recente_audicao, pediatria,
    "Perda da audição em um ou ambos os ouvidos na última semana.",
    "Apresenta perda recente da audição (última semana)?").

discriminador(perda_total_visao_aguda, pediatria,
    "Perda da visão em um ou ambos os olhos nas últimas 24 horas e que não voltou ao normal.",
    "Apresenta perda total da visão aguda (últimas 24h)?").

discriminador(piora_ao_movimento, pediatria,
    "Dor muscular que piora com o movimento.",
    "A dor piora ao movimento?").

discriminador(politraumatizado, pediatria,
    "Criança com múltiplos traumas simultâneos.",
    "A criança está politraumatizada (múltiplos traumas)?").

discriminador(priapismo, pediatria,
    "Ereção peniana dolorosa, independente de desejo sexual, por mais de duas horas, sem ejacular.",
    "Apresenta priapismo (ereção dolorosa > 2 horas)?").

discriminador(prostacao_palidez_sudorese, pediatria,
    "Grande debilidade proveniente de doença; perda da coloração da pele; transpiração excessiva.",
    "Apresenta prostração, palidez cutânea ou sudorese?").

discriminador(prostracao_hipotonia, pediatria,
    "Pais descrevem a criança como 'molinha', tônus diminuído (cabeça caída).",
    "Apresenta prostração ou hipotonia?").

discriminador(prurido_irritabilidade_superficie_extensa, pediatria,
    "História de exposição corporal a alguma substância irritante com prurido e/ou irritabilidade em superfície corporal extensa.",
    "Apresenta prurido e/ou irritabilidade em superfície corporal extensa?").

discriminador(prurido_leve, pediatria,
    "Prurido isolado ou não persistente e sem repercussões sistêmicas.",
    "Apresenta prurido leve?").

discriminador(prurido_moderado, pediatria,
    "Prurido persistente, podendo ter repercussões sistêmicas.",
    "Apresenta prurido moderado (persistente e com possível repercussão sistêmica)?").

discriminador(pulso_anormal, pediatria,
    "Pulso arterial muito fraco, ritmo irregular, bradicardia ou taquicardia conforme idade.",
    "O pulso está anormal (muito fraco, irregular, taquicárdico ou bradicárdico)?").

discriminador(purpura, pediatria,
    "Erupção de qualquer parte do corpo que não empalidece sob pressão (causada por hemorragias subcutâneas).",
    "Apresenta púrpura?").

discriminador(quadro_agudo_sem_desidratacao, pediatria,
    "Diarreia e/ou vômitos sem sinais clínicos de desidratação.",
    "Apresenta quadro agudo sem desidratação?").

discriminador(queda_de_altura, pediatria,
    "Queda de altura entre 2 e 3 vezes a altura da criança.",
    "Houve queda de altura significativa (2-3x a altura da criança)?").

discriminador(queimaduras_associadas_politrauma, pediatria,
    "Queimaduras associadas a múltiplas lesões (politrauma), frequentemente em acidentes de trânsito.",
    "Há queimaduras associadas a politrauma?").

discriminador(queimaduras_com_comorbidades_ou_risco_social, pediatria,
    "Queimaduras associadas a comorbidades clínicas, maus-tratos, violência ou vulnerabilidade social.",
    "Há queimaduras associadas a comorbidades clínicas ou risco social?").

discriminador(queimaduras_de_face, pediatria,
    "Qualquer queimadura em qualquer parte da face.",
    "Há queimaduras de face?").

discriminador(queimaduras_de_genitalia, pediatria,
    "Queimadura significativa em região genital.",
    "Há queimaduras de genitália?").

discriminador(queimaduras_eletricas, pediatria,
    "Queimaduras provocadas por eletricidade, especialmente alta voltagem.",
    "Há queimaduras elétricas?").

discriminador(queimaduras_em_circunferencia_risco_sindrome_compartimental, pediatria,
    "Queimaduras em circunferência com risco de síndrome compartimental (extremidade fria/cianótica, membro rígido/endurecido).",
    "Há queimaduras em circunferência com risco de síndrome compartimental?").

discriminador(queimaduras_mais_24h_com_queixa_clinica_nova, pediatria,
    "Queimadura com mais de 24 horas associada a nova queixa clínica (prurido, hiperemia, limitação parcial de movimentos).",
    "Há queimaduras com mais de 24h associadas a queixa clínica nova?").

discriminador(queimaduras_mais_24h_sem_alteracoes_clinicas, pediatria,
    "Queimadura com mais de 24 horas sem alterações clínicas atuais, apenas relato.",
    "Há queimaduras com mais de 24h sem alterações clínicas?").

discriminador(queimaduras_quimicas, pediatria,
    "Queimaduras por substâncias químicas em contato com pele ou roupas.",
    "Há queimaduras químicas?").

discriminador(reducao_recente_acuidade_visual, pediatria,
    "Redução de acuidade visual corrigida nos últimos 7 dias e/ou alteração visual (lacrimejamento, diplopia, olho vermelho).",
    "Há redução recente da acuidade visual ou alterações visuais (últimos 7 dias)?").

discriminador(relato_de_epistaxes, pediatria,
    "Histórico de episódios de epistaxe (sangramento nasal).",
    "Há relato de epistaxes prévias?").

discriminador(relato_de_hemorroidas, pediatria,
    "Histórico de hemorroidas (veias inflamadas ou dilatadas no ânus/reto).",
    "Há relato de hemorroidas?").

discriminador(resposta_voz_dor_apenas, pediatria,
    "Criança que não responde ao comando verbal ou ao estímulo doloroso.",
    "A criança apresenta resposta apenas à voz ou à dor (ou ausência)?").

discriminador(retencao_urinaria, pediatria,
    "Impossibilidade de eliminar urina pela uretra associada a bexigoma. Condição dolorosa.",
    "Apresenta retenção urinária?").

discriminador(retencao_urinaria_aguda_bexigoma, pediatria,
    "Dificuldade de urinar, fluxo fraco, incapacidade de esvaziar a bexiga, aumento da pressão abdominal.",
    "Apresenta retenção urinária aguda com bexigoma?").

discriminador(risco_alto_agredir_outros, pediatria,
    "Postura tensa, discurso ameaçador, inquietude, perda de autocontrole.",
    "Há risco alto de agredir outros?").

discriminador(risco_alto_autoagressao, pediatria,
    "Passado de autoagressão, tentando se machucar ativamente.",
    "Há risco alto de autoagressão?").

discriminador(risco_moderado_agredir_outros, pediatria,
    "Risco potencial de dano a outros se há qualquer indício de potencial agressão.",
    "Há risco moderado de agredir outros?").

discriminador(risco_moderado_autoagressao, pediatria,
    "Manifesta desejo de se machucar mas não tenta ativamente (sem passado importante).",
    "Há risco moderado de autoagressão?").

discriminador(salivacao_excessiva, pediatria,
    "Salivação excessiva associada a desconforto respiratório.",
    "Apresenta salivação excessiva?").

discriminador(sem_urinar, pediatria,
    "Dificuldade em produzir ou eliminar urina. O relato do número de fraldas trocadas pode ser útil.",
    "A criança está sem urinar (redução ou ausência de diurese)?").

discriminador(sensacao_aperto_toracico_ansiedade, pediatria,
    "Aperto torácico associado a estresse agudo, podendo ter sudorese fria, taquipneia ou tontura.",
    "Apresenta sensação de aperto torácico e ansiedade?").

discriminador(sensacao_de_corpo_estranho, pediatria,
    "Sensação de algo no olho, geralmente descrita como raspando ou arranhando.",
    "Apresenta sensação de corpo estranho no olho?").

discriminador(sensibilidade_na_face_alterada, pediatria,
    "Qualquer alteração de sensibilidade na face.",
    "Apresenta sensibilidade na face alterada?").

discriminador(sepse_possivel, pediatria,
    "Avaliar pulso anormal se temperatura < 38,5°C, alteração do padrão de atividade ou perfusão capilar > 2s.",
    "Apresenta risco de sepse possível (pulso alterado, febre/hipotermia, perfusão > 2s, alteração de atividade)?").

discriminador(sinais_de_desidratacao, pediatria,
    "Língua seca, olhos fundos, turgor pastoso e, em bebês, fontanela baixa. Geralmente com redução da diurese.",
    "Apresenta sinais de desidratação?").

discriminador(sinais_de_infeccao_em_queimadura, pediatria,
    "Sinais de infecção em queimadura: eritema, flogose com ou sem prurido.",
    "A queimadura apresenta sinais de infecção (eritema/flogose/prurido)?").

discriminador(sinais_de_meningismo, pediatria,
    "Rigidez de nuca associada a cefaleia e fotofobia.",
    "Apresenta sinais de meningismo?").

discriminador(sinais_focais, pediatria,
    "Perda de movimento, sensação ou função em local específico do corpo, incluindo alterações visão/audição/fala.",
    "Apresenta sinais focais?").

discriminador(spo2_baixa, pediatria,
    "SpO2 entre 91% - 95% em ar ambiente.",
    "A SpO2 está baixa (91-95% em ar ambiente)?").

discriminador(spo2_muito_baixa, pediatria,
    "SpO2 menor que 95% em oxigenioterapia ou menor de 90% em ar ambiente.",
    "A SpO2 está muito baixa (< 90% em ar ambiente ou < 95% com O2)?").

discriminador(superficie_corporal_queimada_maior_10, pediatria,
    "Superfície corporal queimada maior que 10%.",
    "A superfície corporal queimada é maior que 10%?").

discriminador(tce_com_perda_consciencia_ou_vomitos, pediatria,
    "Trauma cranioencefálico com perda de consciência e/ou vômitos.",
    "Há TCE com perda de consciência e/ou vômitos?").

discriminador(tce_maior_12h_sem_perda_consciencia_ou_vomitos, pediatria,
    "Trauma cranioencefálico há mais de 12 horas, sem perda de consciência e sem vômitos.",
    "Há TCE > 12h sem perda de consciência e sem vômitos?").

discriminador(tce_menor_12h_sem_perda_consciencia_ou_vomitos, pediatria,
    "Trauma cranioencefálico há menos de 12 horas, sem perda de consciência e sem vômitos.",
    "Há TCE < 12h sem perda de consciência e sem vômitos?").

discriminador(taquipneia, pediatria,
    "Frequência respiratória aumentada para a faixa etária pediátrica.",
    "Apresenta taquipneia para a faixa etária?").

discriminador(tosse_frequente, pediatria,
    "Tosse que ocorre após processos virais, sem afetar atividades diárias e sem febre.",
    "Apresenta tosse frequente (pós-viral, sem febre)?").

discriminador(tosse_frequente_emetizante, pediatria,
    "Acessos de tosse seca espasmódica que culmina em vômito; sem estridor e sem dificuldade respiratória.",
    "Apresenta tosse frequente emetizante?").

discriminador(trauma_agudo, pediatria,
    "Qualquer trauma que surgiu entre 12 e 24 horas.",
    "Há trauma agudo (12 a 24 horas)?").

discriminador(trauma_de_escroto, pediatria,
    "Qualquer trauma recente envolvendo a bolsa escrotal.",
    "Há história de trauma de escroto?").

discriminador(trauma_direto_dorso, pediatria,
    "Trauma no dorso (carga de cima para baixo, cair de pé, inclinar ou por torção).",
    "Há relato de trauma direto no dorso?").

discriminador(trauma_direto_pescoco, pediatria,
    "Ocorreu trauma físico direto envolvendo o pescoço (carga de cima para baixo, queda na cabeça, torção).",
    "Há história de trauma direto no pescoço?").

discriminador(trauma_ocular_penetrante, pediatria,
    "Evento traumático físico recente com perfuração do globo ocular.",
    "Apresenta trauma ocular penetrante?").

discriminador(trauma_subito, pediatria,
    "Qualquer trauma que surgiu em até 12 horas.",
    "Há trauma súbito (até 12 horas)?").

discriminador(trauma_toracico_craniano_abdominal_ou_perfuracao, pediatria,
    "Trauma físico envolvendo tórax, crânio e/ou abdome, incluindo trauma perfurante.",
    "Há trauma torácico, craniano, abdominal ou com perfuração?").

discriminador(tumefacao_dolorosa_com_alteracao_temperatura, pediatria,
    "Aumento de volume de pele e partes moles, com ou sem vermelhidão local com alteração temperatura.",
    "Apresenta tumefação dolorosa (com/sem hiperemia) com alteração de temperatura?").

discriminador(tumefacao_dolorosa_retroauricular, pediatria,
    "Aumento de volume retroauricular associado à dor.",
    "Apresenta tumefação dolorosa retroauricular?").

discriminador(vertigem, pediatria,
    "Sensação aguda de tontura ou de rotação, podendo associar-se a náusea e vômito.",
    "Apresenta vertigem (sensação de estar girando/tonto)?").

discriminador(violencia_psicologica_ou_moral, pediatria,
    "Conduta que causa dano emocional, redução da autoestima ou controle/degradação de ações e crenças.",
    "Há sinais de violência psicológica e/ou moral?").

discriminador(violencia_sexual_maior_72h, pediatria,
    "Violência sexual ocorrida há mais de 72 horas ou de repetição sem evento recente.",
    "Houve violência sexual há mais de 72 horas?").

discriminador(violencia_sexual_menor_72h, pediatria,
    "Violência sexual ocorrida há menos de 72 horas.",
    "Houve violência sexual nas últimas 72 horas?").

discriminador(vomitos_em_jato, pediatria,
    "Vômito que ocorre subitamente, sem enjoos e às vezes de maneira violenta.",
    "Apresenta vômitos em jato?").

discriminador(vomitos_sem_desidratacao, pediatria,
    "Vômitos sem presença de sinais de desidratação.",
    "O paciente apresenta vômitos sem sinais de desidratação?").

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
