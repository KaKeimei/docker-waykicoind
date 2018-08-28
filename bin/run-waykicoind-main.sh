docker run --name waykicoind-main --rm -p 6968:6968 \
       -v `pwd`/conf/WaykiChain.conf:/wicc/.WaykiChain/WaykiChain.conf \
       -v `pwd`/data:/wicc/main \
       -d waykichain/wcoind:1.0
