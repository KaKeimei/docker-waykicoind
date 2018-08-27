# docker-waykicoind
Run waykichain coind in docker!

## Install WaykiChain TestNode Docker container
1. cd into the home director where conf and data dirs exist
2. run: ```$sh run-waykicoind-test.sh```

## Lookup Help menu from coind
```docker exec -it waykicoind-test /wicc/coind -datadir=curr help```

## Stop coind 
```$/wicc/coind -datadir=cur stop```

## Test
run ```$docker exec -it waykicoind-test ./coind -datadir=. getpeerinfo```

## Q&A

|Q | A|
|--|--|
|How to modify JSON RPC port | Two options: <br> <li>modify WaykiChain.conf <li>modify docker container mapping port |
|How to run a testnet | modify WaykiChain.conf by adding ```testnet=1```, otherwise it will run as mainnet |
