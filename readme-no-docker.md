# Execute localmente sem Docker

1. **Crie um ambiente virtual:**

   ```sh
   # Linux
   python3 -m venv ./venv

   # Windows
   python -m venv ./venv
   py -3 -m venv ./venv
   ```

2. **Ative o ambiente virtual:**

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

3. **Instale as dependências:**

   ```sh
   pip install -r requirements.txt
   ```

   **pip** é o gerenciador de pacotes e módulos do Python (semelhante ao npm).

4. **Execute a aplicação:**

   ```sh
   uvicorn app:app --reload
   ```

5. **Acesse a aplicação com a documentação interativa:**

   Abra o navegador e acesse: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.
