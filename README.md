# cli-linux

hostnamectl 

timedatectl set-timezone Asia/Ho_Chi_Minh

cd / // vao root

cat /proc/ // info server

cat /proc/cpuinf

cat /proc/meminf // check ram


cd /sys 

ls -l   || phan loai file :
- d : dirtory 
- l : symbolic  link : giong shortcut windows
- x : excutive file , chu X cuoi cung, ca kha nang excutive
dr-xr-x---.  6 root root   4096 Aug 20 10:56 .

permision user group size time namefile 

ls - la /dev || tim devices ket noi vao
ls -la /dev/sdb 
ll  --help

exam: ln -s devops.sh huan-shortcut.sh  || tao shortcut cho file devops




--- tao file ---
1. touch 1.txt 2.txt  , or touch {1..10}.text
2. echo "noidung" > 1.text or ko ghi de file cu : echo "noidung" >> 1.text
3. vi or vim
4.


----lenh timkiem----
find --help || chi tiet hon

find /root/huannguyen -name *.sh -print   || tim file co duoi .sh

find /root/huannguyen -name 'devops.sh'

cat 'find /root/huannguyen -name 'devops.sh'' || tim ra hien thi ngay luon

find /root/huannguyen -name 'devops.sh' -detele || tim xoa luon

find /root/huannguyen -size -1M || tim file nho hon 1MB

find /root/huannguyen -size +4M || tim file lon hon 4MB

find /root/huannguyen -name 'devops.sh'

find /root/huannguyen -mtime 4 // tim file chinh sua cach day 4 ngay

---tim thong tin file --
file 


--- permision---

đdrwx------@  31 huannv  staff    992 Aug 21 12:30 Desktop

drwxr-xr-x.  3 root root     15 Aug 20 09:36 huannguyen.orgian

d : thu muc

r: read

w : wirte

x: excitue  // chay file 

rwx  : quyen cua user root

r-x : quyen group root

-x. :  quyen cua other user

 1-3-3-3 : file-quyenuser-quyengroup-quyenotheruser

chmod : phan quyen file

chomod -x devops.sh  || cancel quyen excuite file

chomod +x devops.sh  || set  quyen excuite file


0 có nghĩa là không có quyền nào được cho phép.

+1 nếu lớp có thể thực thi file.

+2 nếu lớp có thể ghi vào file.

+4 nếu lớp có thể đọc file.

Nói cách khác, ý nghĩa của từng giá trị chữ số là:

0: Không được phép thực hiện bất kỳ quyền nào     ---

1: Thực thi     --x

2: Viết        -w-

3: Viết và thực thi  -wx

4: Đọc     r--

5: Đọc và thực thi   r-x

6: Đọc và viết   rw-

7: Đọc, viết và thực thi   rwx

chmod 777 devops.sh || full quyen

chmod 123 devops.sh || user : quyen x, group: write, other user: quyen Write va excutive

--- den nhanh den thu muc dung lenh pushd ----


pushd /ect/xxx/

pushd /root/var


dirs -l -v  || list ra cac thu muc dang mo

Giup truy cap cac thu muc qua lai nhanh hon

popd  || remove ra cac thu muc can truy cap nhanh


---doi user ---


ls /home || xem co bnhiu user

chown huannv:root devops.sh ||  chuyen quyen cho huannv




----bashshell-----
-  cat devops/sh 2> /dev/null : neu loi thi ko hien thi loi, de tranh full man hinh
-  echo ~  : ve root
-  grep huannv /root/devops.sh : tim huannv 
-  grep -nv huannv /root/devops.sh : tim huannv , hien thi ket qua co dong number
-  grep - i huannv /root/devops.sh
-  


---User Management-----

- root : full access, superuser
- normal user : only some permission
- services account:  ko dc quyen login., chi  dung cho 1 so services vd apache, zabbix user...
 
--- file passwd----

cat /etc/passwd

cat /etc/passwd | grep root 



[root@grafana ~]# cat /etc/passwd

root:x:0:0:root:/root:/bin/bash

- x : passwd duoc ma hoa, ko show xem dc -- check bang lenh cat /etc/shadow,  * : y nghia la user do da bi disable
- 0  : user ID : root khi nao cung = 0 , normal user : id >1000 , sevrices account ID  <1000
- 0 phia sau : group ID
- root : decription 
- /root : home dictory cua user
- /bin/bash: bash shell

- passwd root : doi pass cho root

cat /etc/shadow

- shadow : bao ve passwd cho server, goi han thoi gian time life cua passwd

root:$6$zY.5i/HyaYMdLfh1$3l4c8HY1oNBOdFhHdlZcnGfiA1xXPM.plZxbzFWypLS7WVulZnYN9gRrjtlJfY2y07uw0Cczo3PfWpARaBiMS0::0:99999:7:::

- root: user name
- : : passwd da dc ma hoa  :$6$zY.5i/HyaYMdLfh1$3l4c8HY1oNBOdFhHdlZcnGfiA1xXPM.plZxbzFWypLS7WVulZnYN9gRrjtlJfY2y07uw0Cczo3PfWpARaBiMS0:
- blank : date doi passwd lan cuoi
- 0
- 99999 : maximum ngay het han cua user
- :7 : so ngay nhan canh bao warring user can thay doi pass
- : : thuong blank
-  ! : user dang bi khoa
- 

cat /etc/gshadow   : group shadow

[root@grafana ~]# cat /etc/gshadow

root:::

- root: group name
- ! : ko cho phep add user vao group nay
- blank: co bao nhieu user admin, 1-2-3...
-


--- add user ---

useradd --help

cat /etc/default/useradd

[root@grafana ~]# cat /etc/default/useradd
# useradd defaults file
GROUP=100        
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/bash
SKEL=/etc/skel
CREATE_MAIL_SPOOL=yes 

vim  /etc/default/useradd

chinh sua thong tin user

- useradd huannv : them user huannv
- passwd huannv  : doi password cho user
- passwd --help : de xem chi tiet
- passwd -l huannv : lock user huannv
- passwd -u huannv : unlock user
- userdel huannv : xoa user
- userdel -r huannv : xoa luon home directory va user
- 
- useradd -D -b /home  huannv : thay doi Home cho user huannv



grafana:x:998:996:grafana user:/usr/share/grafana:/sbin/nologin

zabbix:x:997:995:Zabbix Monitoring System:/var/lib/zabbix:/sbin/nologin

ddclient:x:996:994:Dynamic DNS Client:/var/cache/ddclient:/sbin/nologin



-----lenh ps----

- process tren linux
- ps --help

- ps -aef : hien them nhieu thong tin trong process

[root@grafana ~]# ps -aef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 Jun21 ?        00:00:35 /usr/lib/systemd/systemd --switched-root --system --deserialize 22
root         2     0  0 Jun21 ?        00:00:00 [kthreadd]
root         4     2  0 Jun21 ?        00:00:00 [kworker/0:0H]
root         6     2  0 Jun21 ?        00:00:13 [ksoftirqd/0]

- ps -euf  

- ps - U huannv : xem user huannv dang chay ps gi
- top : hien thi process dong

root@grafana ~]# top

top - 15:41:10 up 63 days,  6:07,  1 user,  load average: 0.00, 0.01, 0.05
Tasks: 162 total,   2 running, 160 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem :  1015020 total,   348188 free,   189876 used,   476956 buff/cache
KiB Swap:  1679356 total,  1679356 free,        0 used.   615356 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND                                                                         
    1 root      20   0  128008   6676   4160 S  0.0  0.7   0:35.23 systemd                                                                         
    2 root      20   0       0      0      0 S  0.0  0.0   0:00.43 kthreadd                                                                        
    4 root       0 -20       0      0      0 S  0.0  0.0   0:00.00 kworker/0:0H                                                                    
    6 root      20   0       0      0      0 S  0.0  0.0   0:13.80 ksoftirqd/


- PR : prority : uu dien
- NI : 
-VIRT : o dia ao de chay process
- RES:  
- S : sleep
-  15:41:10 up 63 days : thoi gian uptime server
= 1 user : so user dang login
- 


- iotop : hien thi thong tin o dia, can cai them package ko co san

 yum install iotop


---skill process---

- kill -l 152    || 152 la PID cua process

- man kill : xem more detail

- kill -9 PID : 

- cat /etc/crontab : thuc hien lenh tu dong

-  yum list installed | grep crond :   lenh xem app da dc cai tren he thong chua ?

-  crontab -l

-  ls /var/log/cron : check log cron

-  crontab -r : remove

- rontab (CRON TABLE) là một tiện ích cho phép thực hiện các tác vụ một cách tự động theo định kỳ, ở chế độ nền của hệ thống. Crontab là một file chứa đựng bảng biểu (schedule) của các entries được chạy.

- 




------SSH ------


- ls -la /etc/ssh/
- cat /etc/ssh/sshd_config

- netstat -mlpt : xem cac port


- cat ~/.ssh/id_rsa.pub

- vi ~/.ssh/id_rsa.pub   : copy cai nay

- vi ~/.ssh/authoried_keys   : len server, sau nay se ko can nhap pass ssh

- scp devops.sh root@10.8.0.1:/root/   : scp file

- openssh : 
- cat /etc/ssh/sshd_config
-  
- [root@grafana ~]# rpm -qa | grep ssh

libssh2-1.8.0-3.el7.x86_64
openssh-clients-7.4p1-21.el7.x86_64
openssh-7.4p1-21.el7.x86_64
openssh-server-7.4p1-21.el7.x86_64


- ssh -V
- change port default 22:

vi /etc/ssh/sshd_config : doi port trong file config

systemctl restart sshd : restart de apply thay doi

-----rpm --------

thuoc ve redhad
de quan ly ung dung

de truy cuu thong tin trong he thong


- rpm -qa | grep ssh 

q: query , a: all 


- package manager:

ubunt : apt

centos : yum 

yum install <tenpackage>

yum remove <tenpackage> : go app

yum check-update : check update cua cac app

yum update : chay update het

yum search http 

yum list installed | grep < >    : list cac app da dc cai vao

yum grouplist


yum history installed   : check lich su cai dat

yum history installed list

----2 cach cai dat-----

- yum install : len repo lay file moi nhat ve cai, nhu appstore or server ko di internet duoc

- tai ve bang tay co duoi .rmp : co the tuy chon version tai ve
+ downloand file cai dat .rmp  : wget ....
+ rpm -ivh <file.rpm>

+ rpm -e <tenapp>  : go ung dung

rpm -qa : query toan bo file r

rpm -qa > /tmp/installedpackages.text : luu toan bo ra 


rpm -qa > /tmp/installedpackages.text | wc - l : list co bao nhieu file de so sanh
----runlevel----

runlevel : xem dang o level bnhieu

init runlevel : thay doi level cho user


cd /usr/lib/systemd/system 

ls -l runlevel* :    xem level 

systemctl reboot

systemctl halt : pause system

systemctl power : shhutdown he thong


---disk management ---

lsblk

yum -y install gdisk

gdisk

df -h 

pvcreate /dev/sda3




--- netwoking------


systemtcl status network




--------bashscrip------------------

    SHELL Scripts:


- file.sh giong file .bat tren windows 

ln -s file.sh shorcut : tao shortcut cho file ssh

- echo $PACH

- VARIABLE:

Biến (Variables) trong Shell Script

+ Explicit : VAR=value
+ Read input frome user : read VAR
+ From Command : VAR=$(pwd)
VAR='pwd'

#! /bin/bash


echo -n "Your Name"
read NAME

echo -n "Your Age"
read AGE

echo
echo =========Employee Statistic===========
echo NAME: $NAME
echo AGE: $AGE

- Math Caculation:

+ let

[root@grafana ~]# vi let-command.sh 

#! /bin/bash

NUMBER=7

let RESUTL=NUMBER+7

echo $RESUTS++

NUMBERS=8

let NUMBERS++

echo $NUMBERS


let NUMBERS--

echo $NUMBERS


+ comamnd  (()) OR []

RESULT=$((NUMBER+5))

HOAC : RESULT=$[NUMBER+5]


+ COMMAND expr

NUMBER=5

RESULT=$(expr$NUMBER+8)

echo $RESULT

+ COMMAND BC:


--- IF STATEMENTS & DECISION MAKING----

if 

then : neu dung thi 

elif : if sau cua if

else : neu sai thi

fi : dong ket qua vong lap

if ! : phu dinh


- vidu:

[root@grafana ~]# cat if-command.sh 

#! /bin/bash

echo -n Your Age:
 
read AGE

if [ $AGE -gt 10 ]

# -gt la dau lon hon 

then

   echo "Your age is enough"



else 

   echo "Sorry your age is not enough"

fi



- vi du

[root@grafana ~]# cat ifand.sh

#! /bin/bash

VAR=5

COUNT=80

if [  $VAR -eq 5 ]; then

            echo "Number equal 5"

fi 

if [ $VAR -gt 5 ]; then

            echo "Number greate than 5"

fi 

if [ $VAR -eq 5 ] && [ $COUNT -le 100 ]; then
    
            echo "Staement is true"

fi 
 



--- String comparison----

so sanh chuoi
1. ["$STR1"="$STR2"] 
2. ["$STR1"!="$STR2"]

- vi du: 

[root@grafana ~]# cat ifand.sh 

#! /bin/bash

VAR=5

COUNT=80

if [  $VAR -eq 5 ]; then

            echo "Number equal 5"

fi 

if [ $VAR -gt 5 ]; then

            echo "Number greate than 5"

fi 

if [ $VAR -eq 5 ] && [ $COUNT -le 100 ]; then
    
            echo "Staement is true"

fi 




- vi du 2

[root@grafana ~]# cat ifand.sh 

#! /bin/bash

VAR=5

COUNT=80

if [  $VAR -eq 5 ]; then
            echo "Number equal 5"

fi 

if [ $VAR -gt 5 ]; then
            echo "Number greate than 5"

fi 

if [ $VAR -eq 5 ] && [ $COUNT -le 100 ]; then
    
            echo "Staement is true"

fi


- vi du 3:

test if string is empty

+ [-z "$STR1"] return true if STR1 holds an empty string
+ [[ -z $STR1]] possible, but no widely used - co the sai dc , nhung ko dc su dung rong rai


[root@grafana ~]# cat string-zero.sh 

#! /bin/bash


STR1="abc"

if [ -z "$STR1" ]; then

echo "String emptry"

else

echo "String not empty"

fi

  

- vi du 4

[root@grafana ~]# cat string-check-input-empty.sh 

#! /bin/bash


#check string input by user



echo -n "Input your name: "

read NAME

if [ -z $NAME ]; then

 echo "You must input some characters"

else 

 echo "Your name is : $NAME"


fi



----Wildcards (globbing patterns)-----

+Used by/for
+cp
+rm
+ls
+mv
+Bash string comarison
+... many more

- la 1 dang shorcut - symbol 



Character

Description

Example

*

Matches any number of characters. You can use the asterisk (*) anywhere in a character string.

wh* finds what, white, and why, but not awhile or watch.

?

Matches a single alphabet in a specific position.

b?ll finds ball, bell, and bill.

[ ]

Matches characters within the brackets.

b[ae]ll finds ball and bell, but not bill.

!

Excludes characters inside the brackets.

b[!ae]ll finds bill and bull, but not ball or bell.

Like “[!a]*” finds all items that do not begin with the letter a.

-

Matches a range of characters. Remember to specify the characters in ascending order (A to Z, not Z to A).

b[a-c]d finds bad, bbd, and bcd.

#

Matches any single numeric character.

1#3 finds 103, 113, and 123.

-vi du:

ls -la *.sh
-rw-r--r--. 1 root root  22 Aug 20 10:43 devops.sh
-rwxr-xr-x. 1 root root 158 Aug 26 16:08 filescrip.sh
-rwxr-xr-x. 1 root root 175 Aug 27 08:59 if-command.sh
-rwxr-xr-x. 1 root root 258 Aug 27 09:07 ifand.sh
-rwxr-xr-x. 1 root root 134 Aug 27 08:13 let-command.sh
-rwxr-xr-x. 1 root root 190 Aug 27 16:15 string-check-input-empty.sh
-rwxr-xr-x. 1 root root 222 Aug 27 09:25 string-compairsion.sh
-rwxr-xr-x. 1 root root 108 Aug 27 16:05 string-zero.sh

- vi du 2:

[root@grafana ~]# ls -la {*.sh,*abc}
-rw-r--r--. 1 root root   0 Aug 30 13:46 1.abc
-rw-r--r--. 1 root root  22 Aug 20 10:43 devops.sh
-rwxr-xr-x. 1 root root 158 Aug 26 16:08 filescrip.sh
-rwxr-xr-x. 1 root root 175 Aug 27 08:59 if-command.sh
-rwxr-xr-x. 1 root root 258 Aug 27 09:07 ifand.sh
-rwxr-xr-x. 1 root root 134 Aug 27 08:13 let-command.sh
-rwxr-xr-x. 1 root root 190 Aug 27 16:15 string-check-input-empty.sh
-rwxr-xr-x. 1 root root 222 Aug 27 09:25 string-compairsion.sh
-rwxr-xr-x. 1 root root 108 Aug 27 16:05 string-zero.sh


tim gom 2 dieu kien

xoa, tao file ap dung tat ca



- vi du 3:

[root@grafana ~]# cat list-str.sh 
#! /bin/bash

#list file same same

set -x 

# set -x de hien log khi chay file bash

STR=file1

if [[ $STR == file[0-3] ]]; then
     rm -rf $STR

fi



- vi du 4:

[root@grafana ~]# cat list-str-equal.sh 
#! /bin/bash

#list file same same

set -x 

# set -x de hien log khi chay file bash

STR="devops.sh"

if [[ $STR == "*.sh" ]]; then
     ls -la $STR

fi



- vi du 4

[root@grafana ~]# ls -la !#$  

[root@grafana ~]# ls -la [noidung chua trong file can tim]$

[root@grafana ~]# ls -la hello$

- vi du 5:

[root@grafana ~]# cat check-file.sh 
#! /bin/bash

#echo "Check if file existing"

FILE=file1

if [ -e $FILE ]; then
   ls -la $FILE

else 

  echo "File is not existing"

fi

- vi du 6:

[root@grafana ~]# cat check-file-regular.sh 
#! /bin/bash

#echo "Check file if regular file"

echo "Input name of file you wanna check"

read FILE


if [ -e $FILE ]; then
   ls -la $FILE

else 

  echo "File is not existing"

fi


: tu nhap bien de ra lenh


- vi du 7


[root@grafana ~]# cat check-file-dicretory.sh 
#! /bin/bash

#echo "Check file if regular file"

set -x

echo "Input name of file you wanna check"

read FILE


if [ -d $FILE ]; then
 
# d: dicrectory
# x : excitue file

   ls -la $FILE
    
   echo "Yourfile is dicrectory"

else 

  file $FILE

  echo "Your File is not dorectory"

fi


- vi du 8

[root@grafana ~]# cat check-file-both-read-write.sh 
#! /bin/bash

#echo "Check file if regular file"

set -x

echo "Input name of file you wanna check"

read FILE


if [ -w $FILE ] && [ -r $FILE ];then

   ls -la $FILE
    
   echo "Yourfile is okay with both permission"

else 

  ls -la $FILE

  echo "Your File is not full permission"

  echo "let me add read and write permission to your file"

  chmod +rw $FILE

fi


- vi du 9:

 check-existing-dicrectory.sh  





---- TOOA02- buoi 08-----------

-----------------Packer & Vagrant ---------

--Vagrant----

What is Vagrant ?

1. Khi muon tan dung nen tang phan cung, de chia phan cung. vd : 8gb chia ra
2. Tao ra moi truong devement nhanh chong

V0agrant giup build cac vm : kieu co 1 cau lenh tao nhieu may ao tren EXSi, AWS  nhanh chong, tao VM bang code, ko dung web bang tay nhu bt

- code toi uu , du option khi nao may ao : ram, cpu, card mang, chon file iso


- How to setup, install:

https://www.vagrantup.com/docs/installation

https://www.vagrantup.com/downloads


--  install plugin :
vagrant plugin install aws

vagrant plugin uninstall aws

-- check xem vagrant co support ha tang cua minh ko :

https://vagrant-lists.github.io/


---Boxes:
la nhung image de tao os ( giong iso truyen thong)

The Vagrant cloud Box repository

https://app.vagrantup.com/boxes/search

quan ly box da tai ve : huannvs-Mac-mini:~ huannv$ vagrant box list

add box tai xuong tu repotiry:

vagrant box add centos/7


--- The vagrant file :

vagrant init geerlingguy/ubuntu2004  : cai dat


vi Vagrantfile 

vagrant up

vagrant validate  : check trang thai

may local phai co hypervy, phan mem ao hoa de no trien khai len

vagrant ssh-config  : cau hinh theo thong  ssh vao may ao 

vagrant ssh  <hostname> : la login vao theo hostname default


vagrant status 

vagrant halt : shutdown nong

vagrant global-status

vagrant reload : restart lai vm

vagrant destroy <hostname>   : delete vm

vagrant snapshot save [vm] <name>   : snapshot vm

vagrant snapshot list 

vagrant snapshot delete [vm] <name>









0




