# Sistema Especialista de Triagem Hospitalar

**Disciplina:** Introdução à Inteligência Artificial — Sistemas Especialistas  
**Universidade:** Universidade Estadual de Maringá (UEM)  
**Protocolo:** Manchester (5 níveis de urgência)

---

## 📋 Sobre o Projeto

Este projeto é um **Sistema Especialista** desenvolvido em **Prolog**, com o objetivo de simular a triagem hospitalar de pacientes. O motor de inferência utiliza o **Protocolo de Manchester** e seus diversos fluxogramas médicos (divididos em populações adulta e pediátrica) para determinar o nível de urgência do atendimento de forma determinística. 

O sistema conta com gerencimento de pacientes no formato CRUD em memória, faz perguntas ativamente ao usuário com base no fluxo de decisão e apresenta um módulo de **Explicabilidade (XAI)** que detalha as regras ativadas e o raciocínio utilizado para atribuir certa prioridade de atendimento.

---

## 👥 Membros da Equipe

- [Seu Nome / Membro 1] (RA: [Número])
- [Nome do Membro 2] (RA: [Número])
- [Nome do Membro 3] (RA: [Número])
*(Substitua pelos dados dos membros da equipe)*

---

## 🚀 Como Clonar o Repositório

Para obter uma cópia do código na sua máquina local, abra o terminal e execute o seguinte comando:

```bash
git clone https://github.com/thiagocalvi/expert-system-triage.git
cd expert-system-triage
```

---

## ⚙️ Requisitos

Para rodar este projeto, é necessário possuir o interpretador **SWI-Prolog** instalado em seu sistema.

**Dicas de Instalação:**
- **Linux (Debian/Ubuntu):** 
  ```bash
  sudo apt update
  sudo apt install swi-prolog
  ```
- **macOS:** 
  ```bash
  brew install swi-prolog
  ```
- **Windows:** Efetue o download do instalador pelo [site oficial do SWI-Prolog](https://www.swi-prolog.org/download/stable).

---

## ▶️ Como Executar

No terminal, certifique-se de que você está na raiz do diretório onde clonou o projeto. Em seguida, digite:

```bash
swipl -s main.pl -g iniciar -t halt
```

*(Opcional)* Se desejar rodar a suíte de testes automatizados do projeto, basta utilizar:
```bash
swipl -s tests/run_all.pl -g run_tests -t halt
```