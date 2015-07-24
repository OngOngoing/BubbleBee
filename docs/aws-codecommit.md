#Integrating AWS CodeCommit with Jenkins
*(Source : [AWS Blog](http://blogs.aws.amazon.com/application-management/post/Tx1C8B98XN0AF2E/Integrating-AWS-CodeCommit-with-Jenkins))*
##Prerequisite
  * CentOS7
  * Git
  * Jenkins
  * AWS IAM credential
  * Python installed

##Configuring AWS CodeCommit with Jenkins
1.  Install the AWS CLI using the `Bundled Installer` by executing the following commands sequentially.  

  ```sh
  sudo su -

  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

  unzip awscli-bundle.zip

  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
  ```

2.  After you install the AWS CLI, you must configure it using your IAM user credentials.
  ```sh
  aws configure
  ```

3.  Enter the AWS access key and AWS secret access key for the IAM user you created; enter `us-east-1` for the region name; and enter `json` for the output format.  
    >**AWS Access Key ID [None]:** Type your target AWS access key ID here, and then press <kbd>Enter</kbd>

    >**AWS Secret Access Key [None]:** Type your target AWS secret access key here, and then press <kbd>Enter</kbd>

    >**Default region name [None]:** Type `us-east-1` here, and then press <kbd>Enter</kbd>

    >**Default output format [None]:** Type `json` here, and then press <kbd>Enter</kbd>

4.  Configure the AWS CLI.  
  ```sh
  cd ~jenkins
  sudo -u jenkins /usr/local/bin/aws configure
  ```

    Accept the defaults for the AWS access key and AWS secret access key; enter `us-east-1` for the region name; and enter `json` for the output format.
    >**AWS Access Key ID [None]:** Type your target AWS access key ID here, and then press <kbd>Enter</kbd>

    >**AWS Secret Access Key [None]:** Type your target AWS secret access key here, and then press <kbd>Enter</kbd>

    >**Default region name [None]:** Type `us-east-1` here, and then press <kbd>Enter</kbd>

    >**Default output format [None]:** Type `json` here, and then press <kbd>Enter</kbd>

5.  Configure Git to use IAM credentials and an HTTP path to access the repositories hosted by AWS CodeCommit.

  ```sh
  sudo -u jenkins git config --global credential.helper '!/usr/local/bin/aws codecommit credential-helper $@'

  sudo -u jenkins git config --global credential.useHttpPath true
  ```

6.  Restart/Start Jenkins.
  ```sh
  service jenkins restart
  ```
