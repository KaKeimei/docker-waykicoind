docker run --name waykicoind --rm -p6968:6968 \
       -v `pwd`/conf/WaykiChain.conf:/wicc/WaykiChain.conf \
       -v `pwd`/data:/wicc/main \
       -d waykichain/wcoind:1.0
