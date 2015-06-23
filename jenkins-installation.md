#Jenkins Installation for Linux

![](http://jenkins-ci.org/sites/default/files/jenkins_logo.png)
( Source : http://sanketdangi.com/post/62715793234/install-configure-jenkins-on-amazon-linux )

##Prerequisite
  * Security port 8080 enabled
  * Linux OS


##Installation steps
1.  Launch and login to Amazon instance  

2.  Become a root using <code>sudo su -</code> command.

3.  Update your repositories using  

        yum update

4.  Install <code>wget</code> using  

        yum install wge

5.  Get jenkins repositories using command  

        wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo  

6.  Get jenkins repository key  

        rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key

7.  Install jenkins package  

        yum install jenkins

8.  Start jenkins using  

        service start jenkins

9.  Open your browser and navigate to <code>http://< your-jenkins-ip >:8080</code>. You'll see jenkins dashboard
