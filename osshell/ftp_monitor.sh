#!/bin/bash
/home/shell/sendEmail/sendEmail -f  XXX@XXX -t XXX@XXX -s smtp.XXX -u "谁登陆了我的FTP服务器：" -xu user -xp passwd -m time:`tail -1 /var/log/vsftpd.log |awk '{print $1,$2,$3,$4,$5}'`###user and IP:`tail -1 /var/log/vsftpd.log |awk '{print $8,$12}'`###action:`tail -1 /var/log/vsftpd.log |awk '{print $10}'`###,Come in Target: `tail -1 /var/log/vsftpd.log |awk '{print $13,$14}'`