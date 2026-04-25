:- use_module(library(readutil)).

% IHC

menu_principal :-
    writeln('==========================================='),
    writeln(' SISTEMA ESPECIALISTA - TRIAGEM HOSPITALAR '),
    writeln('==========================================='),
    nl,
    writeln('AVISO LEGAL: Este protótipo é apenas informativo.'),
    writeln('Consulte um especialista para diagnóstico ou recomendação correta e precisa.'),
    nl,
    menu_opcoes.

menu_opcoes :-
    nl,
    writeln('Escolha uma opção:'),
    writeln('1. Iniciar Triagem de Paciente'),
    writeln('2. Gerenciar Pacientes Salvos (CRUD)'),
    writeln('3. Sair'),
    read(Op),
    (   Op == 1 -> iniciar_triagem
    ;   Op == 2 -> menu_crud
    ;   Op == 3 -> writeln('Saindo...'), halt
    ;   writeln('Opção inválida.'), menu_opcoes
    ).

menu_crud :-
    nl,
    writeln('--- MODO CONTROLE DE PACIENTES (CRUD) ---'),
    nl,
    writeln('1. Listar todos os pacientes'),
    writeln('2. Ver detalhes de um paciente (Perguntas/Respostas)'),
    writeln('3. Editar informações (Sexo, Idade, Observação) de um paciente'),
    writeln('4. Remover paciente'),
    writeln('5. Voltar ao Menu Principal'),
    read(Op),
    (   Op == 1 -> listar_pacientes, menu_crud
    ;   Op == 2 -> writeln('Digite o ID do paciente e ponto:'), read(Id), detalhar_paciente(Id), menu_crud
    ;   Op == 3 ->
            writeln('Digite o ID:'), read(Id),
            (   paciente_salvo(Id, Nome, _, IdadeAntiga, _, _, _, _) ->
                writeln('Novo Sexo (entre aspas simples, ex: ''Masculino'' ou ''Feminino''.): '), read(S),
                writeln('Nova Idade (INT): '), read(I),
                writeln('Nova Observacao (texto entre aspas duplas, ex: "obs".): '), read(O),
                (   (IdadeAntiga < 14, I >= 14) -> Mudou = true
                ;   (IdadeAntiga >= 14, I < 14) -> Mudou = true
                ;   Mudou = false
                ),
                (   Mudou == true ->
                    writeln('AVISO: A nova idade muda a categoria do fluxograma (Adulto <-> Pediatria)!'),
                    writeln('O histórico salvo ficará inválido. Deseja excluir este registro e iniciar um novo fluxograma correspondente à nova idade?'),
                    writeln('1. Sim, prosseguir com nova triagem'),
                    writeln('2. Não, cancelar edição (manter como está)'),
                    read(Resp),
                    (   Resp == 1 ->
                        deletar_paciente(Id),
                        (   I < 14 -> NovaPop = pediatria ; NovaPop = adulto ),
                        format('Paciente: ~w | Sexo: ~w | Nova População: ~w~n~n', [Nome, S, NovaPop]),
                        menu_queixa(NovaPop, Nome, S, I) % Inicia novo fluxograma
                    ;   writeln('Edição cancelada.'), menu_crud
                    )
                ;   atualizar_paciente(Id, S, I, O),
                    menu_crud
                )
            ;   writeln('Paciente não encontrado.'), menu_crud
            )
    ;   Op == 4 -> writeln('Digite o ID do paciente e ponto:'), read(Id), deletar_paciente(Id), writeln('Paciente deletado com sucesso.'), menu_crud
    ;   Op == 5 -> menu_opcoes
    ;   writeln('Opção inválida.'), menu_crud
    ).

iniciar_triagem :-
    writeln('Para iniciar o atendimento, informe o nome do paciente: '),
    % consome o possível \n do buffer do "read" que escolheu a opção de menu (antes tava pulando essa pergunta)
    read_line_to_string(user_input, TmpNome), % com isso funciona!
    (   TmpNome == "" -> read_line_to_string(user_input, Nome)
    ;   Nome = TmpNome
    ),
    writeln('Informe o sexo do paciente (Masculino/Feminino): '),
    read_line_to_string(user_input, Sexo),
    writeln('Informe a idade do paciente (em anos).'),
    writeln('Digite a idade seguida de ponto (ex: 25.): '),
    read(Idade),
    (   integer(Idade) ->
        (   Idade < 14 -> Pop = pediatria ; Pop = adulto ),
        format('Paciente: ~w | Sexo: ~w | População definida: ~w~n~n', [Nome, Sexo, Pop]),
        menu_queixa(Pop, Nome, Sexo, Idade)
    ;   writeln('Entrada inválida. Digite um número inteiro seguido de ponto.'),
        iniciar_triagem
    ).

% Exibe queixas e lê com número
menu_queixa(Pop, Nome, Sexo, Idade) :-
    carregar_kb(Pop),
    todas_queixas(ListaQueixas),
    writeln('Selecione a queixa principal:'),
    exibir_menu_numerado(ListaQueixas, 1),
    writeln('Digite o número da queixa seguida de ponto (ex: 1.): '),
    read(OpcaoQueixa),
    (   integer(OpcaoQueixa), nth1(OpcaoQueixa, ListaQueixas, QueixaSelecionada) ->
        format('Queixa selecionada: ~w~n~n', [QueixaSelecionada]),
        menu_sintomas(Pop, Nome, Sexo, Idade, QueixaSelecionada)
    ;   writeln('Opção inválida.'),
        menu_queixa(Pop, Nome, Sexo, Idade)
    ).

% Exibe sintomas sequencialmente e para na primeira regra ativada (protocolo é intrinsecamente determinístico)
menu_sintomas(Pop, Nome, Sexo, Idade, Queixa) :-
    limpar_sintomas, % Limpa estado da triagem passada
    perguntar_sintomas_interativo(Queixa, CorResultado),
    nl,
    writeln('==============================================='),
    format('   RESULTADO DA TRIAGEM - PACIENTE: ~w~n', [Nome]),
    writeln('==============================================='),
    mensagem_cor(Pop, CorResultado, Msg),
    writeln(Msg),
    nl,
    writeln('====================================================================================='),
    writeln('Este protótipo é apenas informativo. Consulte um profissional de saúde para precisão.'),
    writeln('====================================================================================='),
    % Estou salvando com uma mensagem padrão de observação por hora, mas da para no final permitir adicionar observação.
    % Atualmente só é possível modificar a observação no menu_crud.
    salvar_paciente_atual(Nome, Sexo, Idade, "Nenhuma observação inicial.", Queixa, CorResultado), 
    menu_pos_triagem(Pop, Queixa, CorResultado).

menu_pos_triagem(Pop, Queixa, CorResultado) :-
    nl,
    writeln('O que deseja fazer agora?'),
    writeln('1. Explicar Diagnóstico (Por que?)'),
    writeln('2. Ir para o CRUD de Pacientes (Ver/Editar detalhes deste e de outros pacientes)'),
    writeln('3. Iniciar nova triagem para outro paciente'),
    writeln('4. Voltar ao Menu Principal'),
    read(Op),
    (   Op == 1 -> menu_explicabilidade(Pop, Queixa, CorResultado)
    ;   Op == 2 -> menu_crud
    ;   Op == 3 -> iniciar_triagem
    ;   Op == 4 -> menu_opcoes
    ;   writeln('Opção inválida.'), menu_pos_triagem(Pop, Queixa, CorResultado)
    ).

% Itera sobre as regras nativamente. O Prolog faz isso de cima pra baixo (do vermelho para o azul).
perguntar_sintomas_interativo(Queixa, Cor) :-
    (   regra(Queixa, CorProva, Discriminadores),
        validar_discriminadores(Discriminadores),
        ! , % cut para garantir que pare na primeira regra ativada.
        Cor = CorProva
    ) ; Cor = azul.

validar_discriminadores([]).
validar_discriminadores([D|Resto]) :-
    tem_sintoma(D), !, validar_discriminadores(Resto).
validar_discriminadores([D|_]) :-
    sintoma_recusado(D), !, fail.
validar_discriminadores([D|Resto]) :-
    perguntar_sintoma_unico(D),
    validar_discriminadores(Resto).

perguntar_sintoma_unico(D) :-
    format('O paciente apresenta o seguinte sintoma: ~w?~n', [D]),
    writeln('1. Sim'),
    writeln('2. Não'),
    writeln('Digite a opção (com ponto final): '),
    read(Resp),
    (   Resp == 1 -> adicionar_sintoma(D)
    ;   Resp == 2 -> assertz(sintoma_recusado(D)), fail
    ;   writeln('Opção inválida. Digite 1. ou 2.'),
        perguntar_sintoma_unico(D)
    ).


menu_explicabilidade(Pop, Queixa, CorResultado) :-
    nl,
    writeln('Deseja explicação sobre o resultado?'),
    writeln('1. Sim, por que essa cor foi atribuída?'),
    writeln('2. Sim, por que AS OUTRAS CORES não foram atribuídas?'),
    writeln('3. Voltar ao menu de operações do paciente'),
    writeln('4. Sair do sistema'),
    writeln('Digite a opção (com ponto final): '),
    read(Op),
    tratar_op_explicabilidade(Op, Pop, Queixa, CorResultado).

tratar_op_explicabilidade(1, Pop, Queixa, CorResultado) :-
    por_que(Queixa, CorResultado, Sintomas),
    % É possível que seja Azul, que não tenha regra ativada
    (   CorResultado == azul ->
        writeln('Os sintomas do paciente não preencheram os critérios para categorias urgentes (azul é a categoria base).')
    ;   format('A cor ~w foi atribuída porque os sintomas ativaram a respectiva regra.~n', [CorResultado]),
        format('Sintomas presentes que a regra exige: ~w~n', [Sintomas])
    ),
    menu_explicabilidade(Pop, Queixa, CorResultado).

tratar_op_explicabilidade(2, Pop, Queixa, CorResultado) :-
    writeln('Para que as outras cores fossem atribuídas, os seguintes discriminadores (regras) deveriam ter sido confirmados pelo paciente:'),
    explicar_outras_cores(Pop, Queixa, CorResultado),
    menu_explicabilidade(Pop, Queixa, CorResultado).

tratar_op_explicabilidade(3, Pop, Queixa, CorResultado) :-
    menu_pos_triagem(Pop, Queixa, CorResultado).

tratar_op_explicabilidade(4, _, _, _) :-
    writeln('Saindo...').

tratar_op_explicabilidade(_, Pop, Queixa, CorResultado) :-
    writeln('Opção inválida.'),
    menu_explicabilidade(Pop, Queixa, CorResultado).

% Explica os discriminadores exigidos por todas as outras cores
explicar_outras_cores(Pop, Queixa, CorResultado) :-
    todas_cores(Pop, Cores),
    forall((member(C, Cores), C \== CorResultado),
           (
               findall(D, regra(Queixa, C, D), RegrasDaCor),
               (   RegrasDaCor \== [] ->
                   format(' -> Para a cor ~w, pelo menos um destes critérios: ~w~n', [C, RegrasDaCor])
               ;   % Cores base como azul muitas vezes não têm discriminadores explícitos dependendo da queixa
                   format(' -> A cor ~w é atribuída por exclusão ou não possui critérios explícitos.~n', [C])
               )
           )
    ).


exibir_menu_numerado([], _).
exibir_menu_numerado([X|Resto], I) :-
    format('~w. ~w~n', [I, X]),
    IProximo is I + 1,
    exibir_menu_numerado(Resto, IProximo).
