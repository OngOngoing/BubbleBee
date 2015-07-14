#Installation 'ป้า' (Deploy Servlet Server)

###install Java 8
* Download Java

        # cd /opt/
        # wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz"
  
        # tar xzf jdk-8u45-linux-x64.tar.gz
* Install Java with Alternatives

        # sudo chown -R root: jdk1.7.0_71
        # sudo alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 1
        # sudo alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 1
        # sudo alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_45/bin/jar 1
* Check Installed Java

        # java -version
###Install and config Apache Tomcat
* Yum install Tomcat and Admin Package

        # sudo yum install tomcat
  
        # sudo yum install tomcat-webapps tomcat-admin-webapps
* Configure Tomcat Users

        # sudo vi /usr/share/tomcat/conf/tomcat-users.xml
Add a user Deployer as the manager-script **for Deploy plugin(Jenkins)

                                tomcat-users.xml — Admin User
        <tomcat-users>
            <user username="deployer" password="deployer" roles="manager-script"/>
        </tomcat-users>
Save and exit the tomcat-users.xml file
* Start Tomcat

        # sudo systemctl start tomcat  
        

Just incase - if tomcat not start onboot

        # sudo systemctl enable tomcat.service
        # sudo systemctl start tomcat.service
