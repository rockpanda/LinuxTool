Backup Your MySQL Databases to Disk, FTP, and Email
===================================================
  
这是一个支持MySQL服务器的shell脚本。它可以与您想要的许多服务器（远程或本地）通信，并且有一些特性来过滤特定的数据库和表名。
支持保留最近多少天的备份，每天运行请注意添加定时任务crontab.
### 使用要求
要在本地备份数据库，您只需要bash和gzip，它与几乎所有的Linux发行版都有关系。
在很多项目中也运用到了这个脚本，最长的稳定运行2年以上。
要备份到FTP，您需要“FTP”程序。
要备份到电子邮件，你需要“mutt”程序。

#### MySQL Settings
##### DBNAMES
您想要备份的Schema(数据库名)，由空格分隔;空留备份到该主机上的所有数据库
###### Example:
`DBNAMES[0]="db1 db2"`

##### DBUSER
数据库用户名，建议单独创建一个备份专用账号
###### Example:
`DBUSER[0]="root"`

##### DBPASS
备份帐号密码
###### Example:
`DBPASS[0]="password"`

##### DBHOST
数据库地址，优先IP地址
###### Example:
`DBHOST[0]="localhost"`

##### DBTABLES
您想要备份或排除的表，由空格分隔;空着备份所有的表。
###### Example:
`DBTABLES[0]="db1.table1 db1.table2 db2.table1"`

##### DBTABLESMATCH
如果你把它设置为“include”，它只会备份DBTABLES中的表，“排除”将备份所有表，但在DBTABLES中。
###### Example:
`DBTABLESMATCH[0]="include"`

##### DBOPTIONS
如果你想给“mysqldump”其他选项，请把它们包括在这里。如果你想给“mysqldump”其他选项，请把它们包括在这里。
###### Example:
`DBOPTIONS[0]="--quick --single-transaction"`

#### Email Settings
##### EMAILS
Email addresses to send backups to, separated by a space.
###### Example:
`EMAILS="address@yahoo.com address@usa.com"`

##### SUBJECT
这是你会得到的邮件的主题。
###### Example:
`SUBJECT="MySQL backup on $SERVER ($DATE)"`

#### FTP Settings
##### FTPHOST
###### Example:
`FTPHOST[0]="ftphost"`

##### FTPUSER
###### Example:
`FTPUSER[0]="username"`

##### FTPPASS
###### Example:
`FTPPASS[0]="password"`

##### FTPDIR
###### Example:
`FTPDIR[0]="backups"`

### Backing up multiple servers
对于您正在备份的每个服务器，您需要在“MySQL设置”下复制/粘贴区块，并在括号中增加键（例如，第一个服务器将为0，下一个将是1，以此类推）。