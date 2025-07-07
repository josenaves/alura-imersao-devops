# Imersão Alura - DevOps com Google Cloud

Projeto de API desenvolvida em Python com o framework FastAPI.
O objetivo é gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Crie um ambiente virtual:**

   ```sh
   # Linux
   python3 -m venv ./venv

   # Windows
   python -m venv ./venv
   py -3 -m venv ./venv
   ```

3. **Ative o ambiente virtual:**

   - No Linux/Mac:

     ```sh
     source venv/bin/activate
     ```

   - No Windows:

     ```sh
     venv\Scripts\activate
     ```

     **ERRO COMUM:** "File ... cannot be loaded because running scripts is disabled on this system".
     Indica que a política de execução do PowerShell está impedindo que o script de ativação do ambiente virtual seja executado. Isso é uma medida de segurança do Windows.

     **SOLUÇÃO:** Alterar a política de execução do PowerShell, definindo-a para RemoteSigned. Esta é a opção mais comum e recomendada para desenvolvedores. Ela permite que os scripts locais que você cria sejam executados, mas exige que scripts baixados da internet sejam assinados digitalmente.

      Acesse o PowerShell como Administrador:

      - Verifique a política de execução atual (opcional) com o seguinte comando:

         ```sh
            Get-ExecutionPolicy
         ```

         Provavelmente, ele mostrará Restricted, que é o padrão e impede a execução de scripts.

      - Defina a política de execução com o seguinte comando:

         ```sh
         Set-ExecutionPolicy RemoteSigned
         ```

   - Comando para desativar o ambiente virtual:

      ```sh
     deactivate
     ```

4. **Instale as dependências:**

   ```sh
   pip install -r requirements.txt
   ```

   **pip** é o gerenciador de pacotes e módulos do Python (semelhante ao npm).

5. **Execute a aplicação:**

   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

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
