% =========================
% ANEMIA FALCIFORME / HEMOFILIA
% =========================

% regra(Queixa, Cor, ListaDeDiscriminadores)

% VERMELHO
regra(anemia_falciforme_hemofilia, vermelho,
    [sinais_de_choque]).

regra(anemia_falciforme_hemofilia, vermelho,
    [convulsao]).

regra(anemia_falciforme_hemofilia, vermelho,
    [paciente_nao_responsivo]).


% LARANJA
regra(anemia_falciforme_hemofilia, laranja,
    [dor_intensa]).

regra(anemia_falciforme_hemofilia, laranja,
    [aumento_volume_articular]).

regra(anemia_falciforme_hemofilia, laranja,
    [dispneia]).

regra(anemia_falciforme_hemofilia, laranja,
    [hemiparesia]).

regra(anemia_falciforme_hemofilia, laranja,
    [deficit_neurologico_agudo]).

regra(anemia_falciforme_hemofilia, laranja,
    [ictericia_com_dor_abdominal]).


% AMARELO
regra(anemia_falciforme_hemofilia, amarelo,
    [ictericia]).

regra(anemia_falciforme_hemofilia, amarelo,
    [dor_leve_a_moderada]).

regra(anemia_falciforme_hemofilia, amarelo,
    [deficit_neurologico_novo]).

regra(anemia_falciforme_hemofilia, amarelo,
    [hematuria]).
