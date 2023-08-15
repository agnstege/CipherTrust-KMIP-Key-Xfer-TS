# !/bin/bash
#
# Script for executing kc.by on Linux
#

python3 kc.py \
-srcHost 192.168.50.100 \
-srcUser mary_kmip_test -srcPass Thales123! \
-dstHost 192.168.50.110 \
-dstUser tony_kmip_test -dstPass Thales123! \
-srcclientCert cert100.pem -srcclientKey key100.pem \
-srcCAs ca-100.txt \
-dstclientCert cert110.pem -dstclientKey key110.pem \
-dstCAs ca-110.txt \
