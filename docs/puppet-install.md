#Puppet Installation for CentOS 7

![](https://puppetlabs.com/sites/all/themes/puppetlabs/images/logo.svg)  

##Prerequisite
  * Security port <code>8140</code>, <code>61613</code>, and <code>443</code> enabled
  * CentOS 7


##Pre steps
1.  Launch and login to Amazon instance  
2.  Become a root using <code>sudo su -</code> command.  
3.  Edit your <code>hosts</code> file using the following command.  

      ```sh
      vi /etc/hosts
      ```

4.  Add your private IP as a hostname for your puppet-master in <code>hosts</code> file.  eg.  
  <em>(replace `123.123.123.123` to your private-ip and <code>puppet.ex.local</code> to whatever you want.)</em>

  ```sh
  ...
  123.123.123.123 puppet.ex.local puppet
  ```

5.  Edit your hostname using the following command in Terminal
    ```sh
    hostnamectl set-hostname puppet.ex.local
    ```

6.  Restart your network service

    ```sh
    service network restart
    ```

7.  Make sure your hostname is correct by execute the follwing command in Terminal

    ```sh
    hostname
    ```

    Here's a reminder of what the output should contain :
    ```sh
    puppet.ex.local
    ```

##Puppet Installation steps
1.  Launch and login to Amazon instance  

2.  Become a root using <code>sudo su -</code> command.

3.  Update your repositories using  

        yum update

4.  Install <code>wget</code> using  

        yum install wget

5.  Enable the Puppet Labs Package Repository  

        sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

6.  Install Puppet on the Puppet Master Server  

        sudo yum install puppet-server

7.  Upgrading  

        sudo puppet resource package puppet-server ensure=latest

8.  Get the Master’s Names and Certificates Set Up  

        cd /etc/puppet/
        vi puppet.conf

    In the <code>[main]</code> section of the master’s <code>puppet.conf</code> file, set the dns_alt_names setting to a comma-separated list of each hostname the master should be allowed to use:  

        dns_alt_names = puppet,puppet.example.com,puppetmaster01,puppetmaster01.example.com

9.  For CA Master  

          sudo puppet master --verbose --no-daemonize

    This will create the CA certificate and the puppet master certificate, with the appropriate DNS names included. Once it says Notice: <code>Starting Puppet master version [VERSION]</code>, type <kbd>ctrl-C</kbd> to kill the process.

10. Download Puppet Enterprise tarball

          wget https://s3.amazonaws.com/pe-builds/released/3.8.1/puppet-enterprise-3.8.1-el-7-x86_64.tar.gz

11.  Unpack the tarball. (Run `tar -xf <tarball>`.)

12.  From the PE installer directory, run

          sudo ./puppet-enterprise-installer

13.  When prompted, choose <kbd>Yes</kbd> to install the setup packages. (If you choose “No,” the installer will exit.)  

  At this point, the PE installer will start a web server and provide a web address: `https://<install platform hostname>:3000`. Please ensure that port 3000 is reachable. If necessary, you can close port 3000 when the installation is complete. Also be sure to use `https`.


14.  Follow the [Monolithic Installation](https://docs.puppetlabs.com/pe/latest/install_pe_mono.html#monolithic-installation-step-2) from PuppetLabs Docs

15.  Next > [Install Puppet Agents](puppet-agent-install.md)




<em>
Source
 - https://docs.puppetlabs.com/pe/latest/install_pe_mono.html
 - https://docs.puppetlabs.com/guides/install_puppet/install_el.html
</em>
