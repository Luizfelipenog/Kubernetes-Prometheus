# Usa a imagem base do Python
FROM python:3.8-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o script Python para dentro do container
COPY WebScraping.py /app/WebScraping.py

# Instala as dependências necessárias
RUN pip install --no-cache-dir requests beautifulsoup4

# Comando para rodar o script Python
CMD ["python3", "WebScraping.py"]
