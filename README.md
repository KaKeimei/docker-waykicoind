# docker-waykicoind
Run waykichain coind in docker!

## Install WaykiChain TestNode Docker container
1. cd into the home director where conf and data dirs exist
2. run: ```$sh run-waykicoind-test.sh```

## Test test node
run ```$docker exec -it waykicoind-test ./coind -datadir=. getpeerinfo```
