# docker-waykicoind
Run waykichain coind in docker!

## Build the waykicoind docker
### method-1: build from Dockerfile

```sh ./bin/build-waykicoind.sh```

### method-2: pull from GitLab docker registry
1. ```docker login registry.gitlab.com```
1. ```docker pull registry.gitlab.com/waykichain-public/dockers/waykicoind```

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
|How to modify JSON RPC port | Two options: <br> <li>modify [WaykiChain.conf](https://github.com/WaykiChain/WaykiChain/wiki/WaykiChain.conf) (```rpcport=6968```)<li>modify docker container mapping port |
|How to run a testnet | modify WaykiChain.conf by adding ```testnet=1```, otherwise it will run as mainnet |
