rm /deployments/ganache.json

. env/bin/activate && python --version

starknet-devnet --host 0.0.0.0 --port 5000