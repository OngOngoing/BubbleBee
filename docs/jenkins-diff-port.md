#A Steps to Permanently start Jenkins on different port

##Prerequisite
  * Jenkins successfully installed.


##Steps
1.  Launch and login to Amazon instance.
2.  Become a root using <code>sudo su -</code> command.
3.  edit the Jenkins configuration file using the following command.

    ```sh
    vi /etc/sysconfig/jenkins
    ```

4.  Search for `JENKINS_PORT="8080"` and modify it to whatever you want.
    eg.
    ```sh
    JENKINS_PORT="9000"
    ```

5.  Restart the jenkins service, then you're ready to go.
    ```sh
    service jenkins restart
    ```
