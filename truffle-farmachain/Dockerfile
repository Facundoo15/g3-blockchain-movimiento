FROM node:20-alpine


WORKDIR /app


RUN npm install -g truffle \
    && npm config set bin-links false \
    && npm cache clean --force  # Limpiar caché después de instalar Truffle


COPY package.json ./

RUN npm install \
    && npm cache clean --force  # Limpiar caché después de instalar dependencias


COPY contracts ./contracts
COPY migrations ./migrations
COPY truffle-config.js ./truffle-config.js

CMD ["truffle", "compile"]