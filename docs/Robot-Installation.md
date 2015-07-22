# How to setup robot instance
Required:
* PuTTY
* PutTTYgen

Connect to instance via `PuTTY` and use `PuTTYgen` for generate key  

Follow this step:

###Install Robot
* Install Robotframework by executing the following command sequentially.

```sh
sudo yum install epel-release  
sudo yum install python-pip  
sudo yum install bzip2
pip install selenium  
pip install robotframework
pip install robotframework-Selenium2Library  
```

* Install Phantomjs or Firefox  
  - Phantomjs  
    ```sh
    sudo yum install npm  
    npm install -g phantomjs
    ```

  - Firefox
    ```sh
    sudo yum install firefox
    sudo yum install tigervnc-server  
    vncserver :1  
    export DISPLAY=:1  
    ```

  - Chrome
    ```sh
    sudo yum install google-chrome-stable  
    npm install chromedriver
    vncserver :1  
    export DISPLAY=:1
    ```

**after install chromedriver don't forget to move chromedriver to `/usr/bin/`**

if you can't install google-chrome-stable please see this : http://www.tecmint.com/install-google-chrome-on-redhat-centos-fedora-linux/

##Permanently run VNCserver on startup
1.  become root using the following command.
    ```sh
    sudo su -
    ```

2.  Edit the `Environment` path by executing the following command.
    ```sh
    vi /etc/environment
    ```

    Add the following line and save.
    ```sh
    DISPLAY=:1
    ```

3.  Add VNCserver as a service by create a file named `vncserver` in `/etc/init.d`

    ```sh
    cd /etc/init.d
    vi vncserver
    ```
    with the following lines inside.
    ```sh
    #!/bin/bash
    # description: vncserver Start Stop Restart
    # processname: vncserver
    # chkconfig: 234 20 80
    VNCSERVER_HOME=/opt/vncserver
    DISPLAY=:1
    echo DISPLAY=$DISPLAY
    case $1 in
      start)
              sudo -u centos vncserver $DISPLAY
              echo vncserver is running as $DISPLAY @centos [ START ]  
      ;;
      stop)
              sudo -u centos vncserver -kill $DISPLAY
              echo vncserver $DISPLAY @centos is terminated [ STOP ]
      ;;
      restart)
              sudo -u centos vncserver -kill $DISPLAY
              sudo -u centos vncserver $DISPLAY
              echo vncserver $DISPLAY @centos is restarted [ RESTART ]
      ;;
    esac
    exit 0
    ```
    Then save.

4.  Execute the following command sequentially.
```sh
chmod 755 vncserver
chkconfig --add vncserver
chkconfig --level 234 vncserver on
```

5.  Verify it by
```sh
chkconfig --list vncserver
```

6.  Now you can run vncserver as a service.
```sh
service vncserver start
```
as well as `stop`, `restart`.


##Executing ROBOT

try the following command.
```sh
pybot --version
```
you should see robotframework version  
if not .. try to install again

:speech_balloon: Now you can run test  

```sh
pybot YOUR_TEST_FILE.txt  
```
