
## Advanced usage

Build Docker Image using the below command
     
    $ docker image build .

Start Jenkins with SSL support:

Create a self-signed test SSL certificate.

    $ keytool -genkey -keyalg RSA -alias selfsigned -keystore /opt/keystore.jks -storepass 12345678 -dname "cn=localhost"

Launch Jenkins

    $ docker run -p 8080:8080 -v /etc/keystore.jks:/opt/keystore.jks ImageID --httpPort=-1 --httpsPort=8080 --httpsKeyStore=/etc/keystore.jks --httpsKeyStorePassword=ToPSecRet321
