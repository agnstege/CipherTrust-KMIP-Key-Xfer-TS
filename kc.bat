REM
REM kc.py KMIP Key Transfer batch file with values
REM
py kc.py -srcHost 192.168.50.100 -srcUser mary_kmip_test -srcPass Thales123! -dstHost 192.168.50.200 -dstUser tony_kmip_test -dstPass Thales123! -srcclientCert cert100.pem -srcclientKey key100.pem -srcCAs ca-100.txt -dstclientCert cert200.pem -dstclientKey key200.pem -dstCAs ca-200.txt 

