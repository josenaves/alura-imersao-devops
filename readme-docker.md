# Criar container da aplicação com Docker

O objetivo é tornar o processo portátil e escalavel, para rodar em qualquer ambiente.

## Criar o arquivo **Dockerfile** sem extensão (obrigatório)

É o arquivo que defini a imagem do container.

## Criar o arquivo **.dockerignore** (Opcional)

O objetivo é otimizar o container levando o minimo necessário para rodar a aplicação.

## Executar o Docker

O daemon do Docker é o "motor" que realmente constrói e executa contêineres.
Se o Docker Desktop não estiver rodando (ou não tiver inicializado completamente), o cliente Docker não conseguirá se conectar a ele.

Sempre que você for executar "qualquer coisa" via contêiner, seja um docker build, docker run, docker pull ou qualquer outro comando docker, você precisa que o daemon do Docker esteja em execução. O cliente Docker que você usa no terminal (docker comando) é apenas uma interface que se comunica com esse daemon. O daemon é o componente principal que gerencia as imagens, contêineres, volumes e redes.

- Se Windows/macOS, **Docker Desktop** é a maneira mais prática de ter o daemon do Docker rodando.
- Se Linux, **Docker Engine** é instalado como um serviço de sistema, e é ele quem fica rodando.

A chave é sempre ter um daemon do Docker ativo e acessível para que seus comandos docker funcionem.

Alguns comandos que podem ajudar a verificar se o Docker está rodando:

    ```sh
    docker info
    docker ps .
    docker images
    ```

## Construir a imagem

    ```sh
    docker build -t image_school_app .
    ```

## Verificar se a imagem foi criada via terminal

    ```sh
    docker images
    ```

## Executa a imagem e roda a aplicação que está dentro

    ```sh
    docker run -p 8000:8000 image_school_app
    ```

- A porta é informada 2x porque estamos mapeando a porta do container com a porta da aplicação.

- Poderiam ser portas diferentes.

- Após a execução, sua API estará disponível em [http://localhost:8000/docs](http://localhost:8000/docs), exatamente como antes, mas agora rodando de forma isolada e portável dentro de um container Docker!

- Para parar a aplicação, pressione Ctrl + C no terminal onde o container está rodando.

- Você também pode usar o Docker Desktop, ao invés do terminal.
