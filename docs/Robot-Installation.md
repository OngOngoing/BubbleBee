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
    npm install -g chromedriver
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

3.  Create a `vncserver:1` service file at `/etc/systemd/system/` using the following command.
```sh
sudo cp /lib/systemd/system/vncserver\@.service /etc/systemd/system/vncserver@:1.service
```

4.  Open your previously created `vncserver@:1.service` file (which is located at `/etc/systemd/system`)
```sh
cd /etc/systemd/system/
sudo vi vncserver\@\:1.service
```

5.  Edit all the `<USER>` field to `centos`, then save.  

6.  Run the following command sequentially.
```sh
sudo systemctl daemon-reload
sudo systemctl enable vncserver\@\:1.service
```

7.  **Restart your machine.**

8.  Verify it by
```sh
sudo systemctl status vncserver\@\:1.service
```

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
