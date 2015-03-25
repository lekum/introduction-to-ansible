#! /bin/bash
aptitude install python-pip python-dev git -yq
pip install ansible
pip install boto
mkdir -p /etc/ansible
su vagrant -c 'ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ""'
su vagrant -c "git clone https://github.com/lekum/introduction-to-ansible.git"
su vagrant -c "cp /vagrant/copy_public_key.sh ."
cp /home/vagrant/introduction-to-ansible/hosts /etc/ansible/hosts
