docker run --name waykicoind-main --rm -p8920:8920 -p 6968:6968 \
       -v `pwd`/conf/WaykiChain.conf:/wicc/.WaykiChain/WaykiChain.conf \
       -v `pwd`/data:/wicc/main \
       -d waykichain/wcoind:1.0
