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
- 



grafana:x:998:996:grafana user:/usr/share/grafana:/sbin/nologin

zabbix:x:997:995:Zabbix Monitoring System:/var/lib/zabbix:/sbin/nologin

ddclient:x:996:994:Dynamic DNS Client:/var/cache/ddclient:/sbin/nologin




1
