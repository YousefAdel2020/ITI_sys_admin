ip add
sudo apt install net-tools
netstat -t
sudo apt install nmap
nmap 10.0.2.15
dd if=/dev/zero of=/tmp/disk1.disk bs=1024 count=100000
dd if=/dev/zero of=/tmp/disk2.disk bs=1024 count=100000
dd if=/dev/zero of=/tmp/disk3.disk bs=1024 count=100000
dd if=/dev/zero of=/tmp/disk4.disk bs=1024 count=100000
sudo losetup -f
sudo losetup /dev/loop22 /tmp/disk1.disk
sudo losetup /dev/loop23 /tmp/disk2.disk
sudo losetup /dev/loop24 /tmp/disk3.disk
sudo losetup /dev/loop25 /tmp/disk4.disk
sudo pvcreate /dev/loop22
sudo pvcreate /dev/loop23
sudo pvcreate /dev/loop24
sudo pvcreate /dev/loop25
sudo vgcreate VG1 /dev/loop22 /dev/loop23 /dev/loop24
sudo lvcreate -L 250M VG1 
sudo mkfs.ext4 /dev/VG1/lvol0
sudo mount /dev/VG1/lvol0 /mnt
sudo vgextend VG1 /dev/loop25
sudo lvextend /dev/VG1/lvol0 -L +50M
sudo resize2fs /dev/VG1/lvol0 +50M

