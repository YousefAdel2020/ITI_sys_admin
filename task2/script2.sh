sudo useradd -m itiuser1
sudo useradd -m itiuser2
sudo passwd itiuser1
sudo passwd itiuser2
sudo groupadd os_team
mkdir os_team_workspace
sudo chgrp os_team /os_team_workspace/
sudo usermod -a -G os_team itiuser1
sudo usermod -a -G os_team itiuser2
sudo login
mkdir mydir1
mkdir mydir2
stat os_team_workspace/
pstree
kill 4151




