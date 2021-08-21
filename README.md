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

