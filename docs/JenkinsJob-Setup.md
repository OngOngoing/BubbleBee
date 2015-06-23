# Setup Jenkins Job  
###Required:
* Jenkins instance
* Robot instance

###Follow Step:
1. Go to your jenkins and create new item (main project)  
2. Go to your item click `Configure`  
3. In configure page  
  > Setup Source Code Management  
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/01.jpg)  
  > Setup Build Triggers  
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/03.jpg)  
  > Setup Post-build Actions  
  > Put your test project in project to build 
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/02.jpg)    
  
4. Go to jenkins and create new item again (test)  
5. Go to test item and click `Configure`  
6. In configure page  
  > Check Restrict where this project can be run
  > and fill in Label Expression with `slave`
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/04.jpg)  
  > In Build
  > Click Add Build Step and select Execute Shell
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/05.jpg)   
  > In Post-build Actions
  > Click Add Post-Build Action and select Publish robot Framework and test results
  
  ![01](https://github.com/OngOngoing/BubbleBee/blob/master/docs/img/06.jpg)  
  
7. Click Bulid and it should be pass
