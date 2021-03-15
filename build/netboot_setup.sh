sudo mkdir /netboot/
sudo mkdir /netboot/mastercopy
sudo mkdir /netboot/05b929aa5
sudo mkdir /netboot/082619bdd
sudo mkdir /netboot/09da08ebb
sudo mkdir /netboot/0d224f5e8
sudo mkdir /netboot/06f7346f6
sudo mkdir /netboot/0932ff686
sudo mkdir /netboot/075dddb12
sudo mkdir /netboot/0fea67f5a
sudo mkdir /netboot/0760c4af3
sudo mkdir /netboot/03f4aabb2
sudo mkdir /netboot/0bd3c354f
sudo mkdir /netboot/0d83caa57
sudo mkdir /netboot/0d4c531e1
sudo mkdir /netboot/027d30d65
sudo mkdir /netboot/0001fcacc
sudo mkdir /netboot/0c57a502d
sudo rsync -xa /boot /netboot/mastercopy/
sudo zcat /netboot/mastercopy/boot/vmlinuz-5.4.0-1029-raspi | sudo tee -a /netboot/mstercopy/boot/vmlinux-5.4.0-1029-rasp
sudo rsync -xa  -F —exclude /netboot / /netboot/mastercopy/
