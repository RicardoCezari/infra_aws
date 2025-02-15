# Etapa 1: Usar uma imagem base do Node.js
FROM node:14

# Etapa 2: Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Etapa 3: Copiar os arquivos do projeto para dentro do contêiner
COPY . .

# Etapa 4: Instalar dependências do Node.js
RUN npm install

# Etapa 5: Expor a porta que o contêiner vai usar
EXPOSE 3000

# Etapa 6: Definir o comando para rodar a aplicação
CMD ["npm", "start"]
