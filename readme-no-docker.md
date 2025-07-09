# Execute localmente sem Docker

1. **Crie um ambiente virtual:**

   ```sh
   # Linux/Mac
   python3 -m venv ./venv

   # Windows
   python -m venv ./venv
   py -3 -m venv ./venv
   ```

2. **Ative o ambiente virtual:**

   ```sh
   # Linux/Mac
   source venv/bin/activate

   # Windows
   venv\Scripts\activate
   ```

   Ao tentar ativar o ambiente virtual no windows pode ocorrer o seguinte erro:

   "File ... cannot be loaded because running scripts is disabled on this system".

   Para resolver consulte a seguinte documentação: [Configuração no Power Shell do Windows](./readme-config-powershell.md)**

3. **Instale as dependências:**

   ```sh
   pip install -r requirements.txt
   ```

   **pip** é o gerenciador de pacotes e módulos do Python (semelhante ao npm do JavaScript).

4. **Execute a aplicação:**

   ```sh
   uvicorn app:app --reload
   ```

5. **Acesse a aplicação com a documentação interativa:**

   Abra o navegador e acesse: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.
