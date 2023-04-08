sudo apt install ftpd
sudo iptables -A INPUT -p tcp --dport 20 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 21 -j ACCEPT
ftp localhost
sudo ufw enable
sudo ufw deny 20/tcp
sudo ufw deny 21/tcp
ftp localhost
tail /var/log/kern.log
cat /etc/services | grep nfs
sudo ufw allow 2049/tcp
sudo ufw allow 2049/udp
sudo nano /etc/exports
sudo exportfs -a
sudo mount -t nfs localhost:/tmp/shares /mnt
cp list.log /mnt
sudo iptables-save > /tmp/iptables-backup


