# Criar container da aplicação com Docker

## Criar Dockerfile (oBrigatório)

## Criar Docker Ignore (Opcional)

## Construir a imagem

    Contrução em camadas (enumera as camadas).

    ```sh
    docker build -t image_school_app .
    ```

## Verificar se a imagem foi criada via terminal

    ```sh
    docker images
    ```

    Se entrar no Docker Desktop vai aparecer a imagem criada também.
    E tem a opção de executar.

## Executa a imagem e roda a aplicação que está dentro

    ```sh
    docker run -p 8000:8000 image_school_app
    ```
    A porta é informada 2x porque estamos mapeando a porta do container com a porta da aplicação.
    Poderia ser portas diferentes.

    Ir no Docker Desktop no menu Containers para conferir se está rodando, e em qual porta.
    
    [http://localhost:8000/docs](http://localhost:8000/docs)
    