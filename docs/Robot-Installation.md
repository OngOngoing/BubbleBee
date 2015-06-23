# How to setup robot instance
Required:
* PuTTY
* PutTTYgen

Connect to instance via `PuTTY` and use `PuTTYgen` for generate key  

Follow this step:

1. Install Robotframework


          # sudo yum install epel-release  
          # sudo yum install pip
          # sudo yum install selenium  
          # pip install robotframework  
          # pip install robotframework-Selenium2Library  

2. Install Phantomjs or Firefox or other browser  
  
  - Phantomjs  


          # sudo yum install npm
          # npm install phantomjs  

  - Firefox


          # sudo yum install firefox   
          # sudo yum install tigervnc-server  
          # vnc-server :1  
          # export $DISPLAY=:1  

and then try

          # pybot --version  
you should see robotframework version  
if not .. try to install again    

:speech_balloon: Now you can run test

          # pybot YOUR_TEST_FILE.txt  
  
