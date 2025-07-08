# Automatize com Docker Compose

Usado para otimizar processos manuais e repetitivos.

1. **Execute o daemon do Docker (engine):**

2. **Crie o Docker Compose:**

    Crie o arquivo **docker-compose.yml** na raiz do projeto, assim como criou os arquivos **Dockerfile** e **.dockerignore**.
    O compose organiza o pipeline de build e deploy.

3. **Execute o Docker Compose:**

    ```sh
        docker compose up

        # roda em background
        #docker compose up - d    
    ```

    Para parar a aplicação, pressione Ctrl + C no terminal onde o container está rodando.

4. **Acesse a aplicação com a documentação interativa:**

    Abra o navegador e acesse: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

    Exatamente como antes, mas agora com menos passos!
