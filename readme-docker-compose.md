# Automatizar com Docker Compose

Usado para otimizar processos manuais e repetitivos.

## Passo a passo

    - 1. Instalar e executar o Docker Desktop (daemon do Docker ou engine do Docker).
    - 2. Criar o arquivo "Dockerfile" para configurar a imagem do container.
    - 3. Criar o arquivo ".dockerignore" para otimizar o container.
    - 4. Criar o arquivo "docker-compose.yml" organizar o pipeline de build e deploy.
    - 5. Executar o docker-compose via terminal (parm "-d" para rodar em background).

        ```sh
        docker compose up

        ## optional parms
        # -d para rodar em background
        #docker compose up - d
        ```

    Após a execução, sua API estará disponível em [http://localhost:8000/docs](http://localhost:8000/docs), exatamente como antes, mas agora rodando de forma isolada e portável dentro de um container Docker!

    Para parar a aplicação, pressione Ctrl + C no terminal onde o compose está rodando.
