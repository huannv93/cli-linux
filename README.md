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




