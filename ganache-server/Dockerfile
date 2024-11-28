
FROM node:20-slim


WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g ganache-cli && npm cache clean --force

EXPOSE ${PORT}

CMD ["sh", "-c", "ganache-cli -h $HOST -p $PORT -m \"$MNEMONIC\" --gasLimit $GAS_LIMIT --networkId $NETWORK_ID"]