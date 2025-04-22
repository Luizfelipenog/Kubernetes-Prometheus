# Usa a imagem base do Python
FROM python:3.8-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o script Python para dentro do container
COPY WebScraping.py /app/WebScraping.py

# Instala as dependências necessárias
RUN pip install requests beautifulsoup4

# Comando para rodar o script Python e manter o contêiner ativo
CMD ["sh", "-c", "python3 WebScraping.py && tail -f /dev/null"]
