# Usar uma imagem leve do Node.js com base no Alpine
FROM node:18-alpine

# (Opcional) Só necessário se você realmente compila módulos nativos (ex: bcrypt)
# Instalar dependências para a compilação de módulos nativos (incluindo bcrypt)
RUN apk add --no-cache python3 make g++

# Define o diretório de trabalho onde o app será armazenado no contêiner
WORKDIR /usr/app

# Copiar os arquivos de configuração de dependências (package.json e package-lock.json)
COPY package*.json ./

# Instala dependências (produção)
# NODE_ENV=production faz com que dependências de dev não sejam instaladas no build
ENV NODE_ENV=production
RUN npm ci --omit=dev

# Copiar o restante dos arquivos do projeto para dentro do contêiner
COPY . .

# Expõe a porta 5000 para o contêiner
EXPOSE 5000

# Comando padrão para iniciar a aplicação
CMD ["npm", "start"]
