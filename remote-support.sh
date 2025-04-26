url=$(curl -s https://e.pcloud.link/publink/show?code=XZtG4qZb8exdducUEQ1n1fs0Ya6uygoLoKV | grep -oP '"downloadlink":\s*"\K[^"]+')
wget -P /home/pi/ "${url//\\/}"
chmod +x /home/pi/install.sh
bash /home/pi/install.sh
