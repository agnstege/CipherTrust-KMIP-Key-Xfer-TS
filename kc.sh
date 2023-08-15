# !/bin/bash
#
# Script for executing kc.by on Linux
#

python3 kc.py \
-srcHost 192.168.50.100 \
-srcUser mary_kmip_test -srcPass Thales123! \
-dstHost 192.168.50.200 \
-dstUser tony_kmip_test -dstPass Thales123! \
-srcclientCert cert100.pem -srcclientKey key100.pem \
-srcCAs ca-100.txt \
-dstclientCert cert200.pem -dstclientKey key200.pem \
-dstCAs ca-200.txt \
