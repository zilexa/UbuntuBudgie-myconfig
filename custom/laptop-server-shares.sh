#!/bin/bash
#

# Mount the NFS share of my server at boot
sudo mkdir /mnt/Obelix
sudo mount -t nfs -o nfsvers=4,minorversion=2,proto=tcp,fsc,nocto 192.168.88.2: /mnt/Obelix
echo "#192.168.88.2:  /mnt/Obelix  nfs4  nfsvers=4,minorversion=2,proto=tcp,fsc,nocto  0  0" | sudo tee -a /etc/fstab

# Add links to the NFS share in the respective personal folders 
ln -s /mnt/Obelix/Collections/Photos /home/asterix/Photos/Obelix
ln -s /mnt/Obelix/Collections/Music /home/asterix/Music/Obelix
ln -s /mnt/Obelix/Media /home/asterix/Media/Obelix
