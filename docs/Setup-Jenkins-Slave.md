#Setup Jenkins Slave Image
Follow this step:

###install Robot
* Install Robotframework 
  
        # sudo yum install epel-release  
        # sudo yum install python-pip  
        # sudo yum install bzip2
        # pip install selenium  
        # pip install robotframework 
        # pip install robotframework-Selenium2Library  

* Install Phantomjs or Firefox  
  - Phantomjs  
  
          # sudo yum install npm  
          # npm install -g phantomjs 

  - Firefox 
  
          # sudo yum install firefox   
          # sudo yum install tigervnc-server  
          # vncserver :1  
          # export $DISPLAY=:1  

  - Chrome
  
          # sudo yum install google-chrome-stable  
          # npm install chromedriver
          # vncserver :1  
          # export $DISPLAY=:1 
after install chromedriver don't forget to move chromedriver to `/usr/bin/`

and then try  

    # pybot --version  
you should see robotframework version  
if not .. try to install again    

:speech_balloon: Now you can run test  
    
    # pybot YOUR_TEST_FILE.txt  
        
###install Java 8
* Download Java

        # cd /opt/
        # wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz"
  
        # tar xzf jdk-8u45-linux-x64.tar.gz
* Install Java with Alternatives

        # sudo chown -R root: jdk1.7.0_71
        # sudo alternatives --install /usr/bin/java java /opt/jdk1.7.0_71/bin/java 1
        # sudo alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_71/bin/javac 1
        # sudo alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_71/bin/jar 1
* Check Installed Java

        # java -version
  
###Install Jenkins
*  Launch and login to Amazon instance  

*  Become a root using <code>sudo su -</code> command.

*  Update your repositories using  

        # yum update

*  Install <code>wget</code> using  

        # yum install wget

*  Get jenkins repositories using command  

        # wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo  

*  Get jenkins repository key  

        # rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key

*  Install jenkins package  

        # yum install jenkins

*  Start jenkins using  

        # service start jenkins

*  Open your browser and navigate to <code>http://< your-jenkins-ip >:8080</code>. You'll see jenkins dashboard.  

###Create Workspace for Amazon EC2 Plugin

      # cd /usr/..
      # sudo mkdir hudson
      # sudo chmod 777 hudson 

###Create AMI
* Open Amazon EC2 Console and go to Tab Instances
* Right click on desire instance
* Go to image and click Create Image
* Name Image name then click Create Image

You will found your image on Tab AMIs

