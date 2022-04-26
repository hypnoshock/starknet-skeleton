FROM node:17-buster-slim

RUN apt update && apt install python3 python3-venv python3-dev build-essential libgmp3-dev net-tools -y

WORKDIR starknet-deploy

RUN python3 -m venv env

RUN . env/bin/activate && pip3 install --upgrade pip && pip3 install wheel && pip3 install cairo-lang && pip3 install starknet-devnet && pip3 install contextvars && pip3 install python-dotenv
RUN . env/bin/activate && pip3 install werkzeug==2.0.3
# Due to maximum recursion error
RUN . env/bin/activate && pip3 install marshmallow_dataclass==8.5.3


COPY .env ./
COPY ./devnet-entrypoint.sh .

ENTRYPOINT ./devnet-entrypoint.sh