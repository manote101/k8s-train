# K8s installation by using Kubespary

git clone https://github.com/kubernetes-sigs/kubespray.git

cd kubespray
pip3 install -r requirements.txt

vi /etc/hosts ## add ip / host
cp -rfp inventory/sample inventory/mycluster
vi inventory/mycluster/inventory.ini

declare -a IPS=(10.128.0.2 10.128.0.3 10.128.0.4)
CONFIG_FILE=inventory/mycluster/hosts.yml python3 contrib/inventory_builder/inventory.py ${IPS[@]}

cd ~
ssh-keygen -N ""
cd .ssh
cat id_rsa.pub >> authorized_keys

cd ~/kubespray
ansible-playbook -i inventory/mycluster/inventory.ini cluster.yml
