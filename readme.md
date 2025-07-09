# Alura imersão DevOps com Google Cloud: Gerenciamento de Instituição de Ensino

Este projeto consiste em APIs RESTful desenvolvidas com Python e FastAPI para gerenciar uma instituição de ensino, incluindo alunos, cursos e matrículas.

O objetivo principal é explorar o uso do Docker para construir e executar a aplicação via Containers localmente e realizar o deploy na nuvem utilizando o Google Cloud.

## Tecnologias Utilizadas

* **Linguagem:** [Python 3.10+](https://www.python.org/downloads/)
* **Framework:** [FastAPI](https://fastapi.tiangolo.com/)
* **Banco de Dados:** [SQLite](https://www.sqlite.org/)
* **Containerização:** [Docker](https://www.docker.com/get-started/)
* **Versionamento:** [Git](https://git-scm.com/downloads)
* **Compartilhamento:** [GitHub](https://github.com/)
* **Deploy na nuvem:** [Google Cloud](https://console.cloud.google.com/)
    - [Google Cloud Run](https://cloud.google.com/run/docs)
    - [SDK gcloud CLI](https://cloud.google.com/sdk/docs/install)

## Estrutura do Projeto

* `app.py`: Ponto de entrada da aplicação FastAPI.
* `models.py`: Definição dos modelos do banco de dados (SQLAlchemy).
* `schemas.py`: Schemas de validação de dados (Pydantic).
* `database.py`: Configuração da conexão com o banco de dados SQLite.
* `routers/`: Contém os arquivos de rotas para cada entidade (alunos, cursos, matrículas).
* `requirements.txt`: Lista de dependências do projeto (bibliotecas Python).

**Observações:**

* O banco de dados SQLite (`escola.db`) será criado e gerenciado automaticamente na primeira execução.
* Para reiniciar o banco de dados (apagar todos os dados), basta excluir o arquivo `escola.db`.

## Como Executar e Fazer o Deploy do Projeto

Escolha um dos guias abaixo para executar a aplicação:

- [Execução local sem Docker](./readme-no-docker.md)
- [Execução local com Docker](./readme-docker.md)
- [Execução local com Docker Compose](./readme-docker-compose.md)
- [Deploy no Google Cloud](./readme-googlecloud.md)

## Referências

[https://www.alura.com.br/](https://www.alura.com.br/)
