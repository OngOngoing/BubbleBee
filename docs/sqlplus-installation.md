#Installing Oracle SQL*Plus Client on CentOS7
<em>(Visit [AWS - Getting Started with OracleDB Instances](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_GettingStarted.CreatingConnecting.Oracle.html) and    [Installing Oracle SQL*Plus client on Ubuntu](http://webikon.com/cases/installing-oracle-sql-plus-client-on-ubuntu) for more information.)</em>




###Download and Install
* You'll need at least all the following rpm files from [Oracle Download Page](http://www.oracle.com/technetwork/database/features/instant-client/index-097480.html).  
*(For 64bit machine)*
```sh
oracle-instantclient11.2-basic-11.2.0.4.0-1.x86_64.rpm
oracle-instantclient11.2-sqlplus-11.2.0.4.0-1.x86_64.rpm
```

* Once Done, you'll need to install the downloaded packages using
```sh
sudo rpm -ivh oracle-instantclient11.2-basic-11.2.0.4.0-1.x86_64.rpm
sudo rpm -ivh oracle-instantclient11.2-sqlplus-11.2.0.4.0-1.x86_64.rpm
```

* If sqlplus yields of a missing libaio.so file, run:
```sh
sudo yum install libaio
```

* Next, You'll need to add Oracle libraries path to the system library list. Create and edit a new file named `oracle.conf`
```sh
sudo vi /etc/ld.so.conf.d/oracle.conf
```
And inside it, add this following path :
```sh
/usr/lib/oracle/11.2/client64/lib
```

* Now, the dynamic linker run-time bindings utility:
```sh
sudo ldconfig
```

###Connecting to database
* The sqlplus64 parameter is `dbusername`/`dbpassword`@//`db-endpoint-url`/`SID`
* Here is the example command:
```sh
sudo sqlplus64 user/password@//db-instance.mirror1.rds.myhost.com:1442/dbsid
```
* It should output something like this:

```sh
SQL*Plus: Release 11.2.0.4.0 Production on Tue Jul 14 10:39:57 2015

Copyright (c) 1982, 2013, Oracle.  All rights reserved.

Connected to:
Oracle Database 11g Release 11.2.0.4.0 - 64bit Production

SQL>
```

* Now, you're ready to execute the sql command.


###How to List All Tables and Describe Tables in Oracle
*( Visit [List all tables doc](http://onewebsql.com/blog/list-all-tables) for more information. )*
* To list all tables owned by the current user, type:
```sql
select tablespace_name, table_name from user_tables;
```

* To list all tables in a database:
```sql
select tablespace_name, table_name from dba_tables;
```

* To list all tables accessible to the current user, type:
```sql
select tablespace_name, table_name from all_tables;
```
