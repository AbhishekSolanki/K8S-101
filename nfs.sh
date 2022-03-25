sudo yum install -y nfs-utils
mkdir /mydbdata
sudo mkdir /mydbdata
sudo chown nfsnobody:nfsnobody /mydbdata/
sudo chmod 777 /mydbdata/
cat <<EOF | sudo tee /etc/exports 
mydbdata *(rw,sync,no_root_squash)
EOF

sudo systemctl restart nfs-server
sudo systemctl enable nfs-server

