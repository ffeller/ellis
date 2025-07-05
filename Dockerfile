FROM python:3.13.4-alpine3.22

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos necessários
COPY . .

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 5000 (ajuste conforme seu app)
EXPOSE 8000

# Comando para rodar o app com Uvicorn (ajuste o nome do módulo se necessário)
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
