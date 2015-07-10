#How to launch an Amazon EC2 instance
      You can launch Linux instance using the AWS Management Console
      if you'd prefer to launch your instance and connect to a Windows ,see  
      AWSv EC2 WindowsGuide: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/EC2Win_GetStarted.html
  <br><br>
  
1. Open the Amazon EC2 console at *https://console.aws.amazon.com/ec2/*
2. From the console dashboard,**click Launch Instance**
3. **Choose an Amazon Machine Image(AMI)** that serve as templates for your instance, click on Community AMIs tab at the left  then check and select Cent OS
4. On the **Choose an instance type** page you can select hardware configuration of your instance.
  - t2.micro (which is default)
  - t1.micro (Select All generations from the filter list instead of Current generation, and the select t1.micro)
5. Configuration your instance on *Configure Instance* page and Add Volume on *Add Storage* page
6. Naming your instance on *Tag Instance* page
7. On the **Configure Security Group** page,you'll see that the wizard created and selected a security group for you but you should select  an **existing security group** then select your security group  <br> e.g. *bubblebee*
8. Click **Review and Launch** to let the wizard complete the other configuration seetting
9. On the **Review Instance Launch** page, click **Launch**
10. Select **Key Pair** and Check at *Check box* and Click **Launch Instances**

<br><br><br>
ﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ    
<br>TADA ..! you'll see a text box tell you that **"Your instances are now launching"** with instance ID 
<br>Click **View Instance** now you'll see your instance is running


 
