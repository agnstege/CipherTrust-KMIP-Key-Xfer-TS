# KMIP-Client
 
The file *kc.py* is the "main" file for this application.  

The *pykmip.conf* file is an example configuration file and contains default locations for its residency within the file

All other files are supporting files (especially any .crt, .pem, or .key files)

kc.bat and kc.sh have also been created to simplify execution of the application and include all of the paramters.

   Usage: py kc.py -srcHost <hostname or IP>
                   -dstHost <hostname or IP> -dstUser <username> -dstPass <password>
                   -srcclientCert SRCCLIENTCERT -srcclientKey SRCCLIENTKEY -srcCAs SRCTRUSTEDCAS
                   -dstclientCert DSTCLIENTCERT -dstclientKey DSTCLIENTKEY -dstCAs DSTTRUSTEDCAS

                  
                  
Notes:  

a) The destination user (dstUser) must be a member of the KEY USERS administrative group.

b) The keys that are to be exported via the KMIP interface from the source host (srcHost) must be EXPORTABLE (check flag)

c) The communication between the python code host(CH) and the srcHost(100) and dsthost(200) relies on certificates.
   1) on (CH)

      1.1)Depends on the use case 

      1.2)generate a sign request + key for dstHost

      openssl req -newkey rsa:2048 -keyout key200.pem -out req200.pem -outform PEM
      **remember to use dstHost user as CN field

      1.3)sign the req100.pem with the srcHost and copy the resulting signed certificate to (CH) as cert100.pem

      1.4)sign the req200.pem with the dstHost and copy the resulting signed certificate to (CH) as cert200.pem 

      1.5)update/confirm the settings in kc.sh       


d) The KMIP library comes from PYKMIP.  You can find their documentation here: https://pykmip.readthedocs.io/en/latest/client.html

e) Opensource informaton for PyKMIP can be found here:  https://github.com/OpenKMIP/PyKMIP


