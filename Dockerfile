# Usa uma imagem oficial do Python como base
FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todos os arquivos do projeto para dentro do container
COPY . .

# Instala as dependências (ajuste se necessário)
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta da aplicação (mude se usar outra)
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
