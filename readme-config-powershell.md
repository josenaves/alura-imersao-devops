# Configuração do PowerShell do Windows para ativar o ambiente virtual do Python

**ERRO:** "File ... cannot be loaded because running scripts is disabled on this system".

Este erro indica que a política de execução do PowerShell está impedindo que o script de ativação do ambiente virtual seja executado.
Isso é uma medida de segurança do Windows.

**SOLUÇÃO:** Alterar a política de execução do PowerShell, definindo-a para **"RemoteSigned"**. Esta é a opção mais comum e recomendada para desenvolvedores. Ela permite que os scripts locais que você cria sejam executados, mas exige que scripts baixados da internet sejam assinados digitalmente.

## Acesse o PowerShell como Administrador

1. Verifique a política de execução:

    ```sh
    Get-ExecutionPolicy
    ```

    Provavelmente, será **"Restricted"**, que é o padrão e impede a execução de scripts.

2. Defina a política de execução para **"RemoteSigned"**:

    ```sh
    Set-ExecutionPolicy RemoteSigned
    ```
