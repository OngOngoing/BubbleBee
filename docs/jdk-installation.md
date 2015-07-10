#OracleJDK8 installation

* Download JDK8
```sh
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
```

* Install JDK using RPM
```sh
sudo rpm -ivh jdk-8u45-linux-x64.rpm
```

* Check Installed Java by  

```sh
java -version
```
  You should see something like this...
```sh
Java(TM) SE Runtime Environment (build 1.8.0_45-b14)
Java HotSpot(TM) 64-Bit Server VM (build 25.45-b02, mixed mode)
```
