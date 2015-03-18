#! /bin/bash
sudo aptitude install python-pip python-dev -yq
sudo pip install ansible
sudo pip install boto
sudo mkdir -p /etc/ansible
sudo cp /vagrant/hosts /etc/ansible/hosts
sudo cp /vagrant/copy_public_key.sh /home/vagrant
su vagrant -c 'ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ""'
