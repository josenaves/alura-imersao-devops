# Deploy no Google Cloud

## Pré-requisitos

- [SDK Google Cloud CLI](https://cloud.google.com/sdk/docs/install)
- [Google Run](https://cloud.google.com/run)

1. Criar uma conta em [https://console.cloud.google.com/](https://console.cloud.google.com/)
2. Criar um projeto
3. Criar um repositório de imagens (em Artifact Registry)

## Execute os seguintes comandos com o gcloud

### Autenticar

    ```sh
        gcloud auth login
        gcloud auth list
    ```

### Setar o Projeto

    ```sh
        gcloud config set project PROJECT_ID
        gcloud config get-value project
        gcloud projects list
    ```

### Realizar o Deploy

    ```sh
        gcloud run deploy --port=8080
    ```

## Executar o projeto

Uma URL será gerada pelo Google Cloud Run, como por exemplo: [https://alura-imersao-devops-129315841380.southamerica-east1.run.app/docs](https://alura-imersao-devops-129315841380.southamerica-east1.run.app/docs)

## References

[https://cloud.google.com/sdk/docs/](https://cloud.google.com/sdk/docs/)
[https://cloud.google.com/sdk/docs/install#windows](https://cloud.google.com/sdk/docs/install#windows)
[https://cloud.google.com/run/docs/overview/what-is-cloud-run?hl=pt-br](https://cloud.google.com/run/docs/overview/what-is-cloud-run?hl=pt-br)
