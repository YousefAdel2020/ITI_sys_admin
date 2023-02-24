sudo cp script1.sh /usr/local/bin
sudo chmod 744 script1.sh 
touch bg_script.service
sudo cp bg_script.service /lib/systemd/system/
sudo systemctl daemon-reload 
sudo systemctl enable bg_script.service 
sudo systemctl start bg_script.service 
sudo systemctl status bg_script.service 

