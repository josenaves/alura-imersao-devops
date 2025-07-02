# 1. Usar uma imagem Python oficial como imagem base.
# A versão 'slim' é uma boa escolha para manter o tamanho da imagem final menor.
# O README menciona Python 3.10 ou superior.
FROM python:3.10.14-slim-bookworm

# Atualiza os pacotes do sistema para corrigir vulnerabilidades conhecidas
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# 2. Definir o diretório de trabalho no contêiner.
WORKDIR /app

# 3. Definir variáveis de ambiente para Python.
# Impede o Python de gerar arquivos .pyc e de bufferizar a saída.
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 4. Copiar o arquivo de dependências e instalar.
# Isso é feito em um passo separado para aproveitar o cache de camadas do Docker.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar o restante do código da aplicação.
COPY . .

# 6. Expor a porta em que a aplicação roda.
EXPOSE 8000

# 7. Comando para executar a aplicação.
# Usar --host 0.0.0.0 para tornar a aplicação acessível de fora do contêiner.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]