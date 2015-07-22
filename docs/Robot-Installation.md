# How to setup robot instance
Required:
* PuTTY
* PutTTYgen

Connect to instance via `PuTTY` and use `PuTTYgen` for generate key  

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
if you can't install google-chrome-stable please see this : http://www.tecmint.com/install-google-chrome-on-redhat-centos-fedora-linux/

and then try  

    # pybot --version  
you should see robotframework version  
if not .. try to install again

:speech_balloon: Now you can run test  

    # pybot YOUR_TEST_FILE.txt  
        
