docker run --name waykicoind-test --rm -p6968:6968 \
       -v `pwd`/conf/WaykiChain.conf:/wicc/WaykiChain.conf \
       -v `pwd`/data:/wicc/testnet \
       -d waykichain/wcoind:1.0
