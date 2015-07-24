#Steps to Install cx_Oracle and connect to database
*More infomation : [Install cx_Oracle in RHEL 64bit](http://ubuntugeeknerd.blogspot.com/2013/08/how-to-install-oxoracle-in-rhel-64-bit.html)*

##Prerequiste
* [Oracle Instant Client](sqlplus-installation.md) successfully installed and working.
* Python2.7 successfully installed.

###Download and Install
```sh
wget http://prdownloads.sourceforge.net/cx-oracle/cx_Oracle-5.1.2-10g-py27-1.x86_64.rpm
```

```sh
sudo rpm -ivh cx_Oracle-5.1.2-10g-py27-1.x86_64.rpm
```

###Set things up
Test whether `cx_Oracle` is working by executing the following command.
```sh
python -c 'import cx_Oracle'
```
  _\*Remind the capital letter 'O'_

If that works with no errors, you're ready to move on.  
But if it yields a missing of `libclntsh.so.10.1` you may need to do the following step.
```sh
cd /usr/lib/oracle/11.2/client64/lib
sudo cp libclntsh.so.11.1 libclntsh.so.10.1
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
```

Now, you should be ready to execute the `python -c 'import cx_Oracle'` command.
####Optional - Permanently add library to enviroment path
Edit the `/etc/enviroment` file by
```sh
sudo vi /etc/environment
```
Add the following line and save.
```sh
LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
```
Then, restart your machine.


####Extra - Python library
Execute and install the following packages sequentially.
```sh
sudo yum install gcc python-devel
sudo yum install libxslt-devel libxml2-devel

sudo pip install configparser
sudo pip install lxml

```
