docker run --name waykicoind-test --rm -p18920:18920 -p 6967:6968 \
       -v `pwd`/conf/WaykiChain.conf:/wicc/WaykiChain.conf \
       -v `pwd`/data:/wicc/testnet \
       -d waykichain/wcoind:1.0
