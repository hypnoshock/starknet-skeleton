FROM node:17-buster-slim

RUN apt update && apt install python3 python3-venv python3-dev build-essential libgmp3-dev curl -y

WORKDIR starknet-deploy

RUN python3 -m venv env
RUN . env/bin/activate && pip3 install wheel && pip3 install cairo-lang

COPY package.json .
RUN npm install

COPY hardhat.config.js ./
COPY scripts ./scripts
# COPY contracts ./contracts # This folder is now mounted
COPY .env ./

# # must match the value for the target hardhat networks
# ENV ACCOUNT_MNEMONIC=${ACCOUNT_MNEMONIC}

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD []