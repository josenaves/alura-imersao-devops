# Imersão Alura - DevOps com Google Cloud

Projeto utilizado durante a imersão da Alura em DevOps com Google Cloud.

API desenvolvida em Python com o framework FastAPI, cujo objetivo é gerenciar uma instituição de ensino, com as entidades alunos, cursos e matrículas.

O objetivo desta imersão foi aprender como utilizar a ferramenta Docker para construir e executar containers para rodar a aplicação localmente, e posteriormente na nuvem com Google Cloud.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---

## Como Executar e Fazer o Deploy

Consulte os guias abaixo para diferentes métodos de execução e deploy da aplicação:

- **[Executando localmente (sem Docker)](./readme-no-docker.md)**
- **[Executando com Docker](./readme-docker.md)**
- **[Automatizando com Docker Compose](./readme-docker-compose.md)**
- **[Deploy no Google Cloud](./readme-googlecloud.md)**
