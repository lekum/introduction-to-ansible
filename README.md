# Introduction to Ansible

This repository contains the support material for the workshop "Introduction to Ansible".

The slide deck can be found [here](http://slides.com/alejandroguiraorodriguez/introduction-to-ansible).

## Installation of the environment

### Pre-requisites

- A Linux, MacOSX o Windows host with 64-bits architecture and support for virtualization.

### Note for Windows users

Please take on account that you may need to install and use `dos2unix` to convert some scripts inside the virtual machines (e.g. `copy_public_key.sh`). Read this [page](http://blog.xjtian.com/post/54399466362/vagrant-tips-for-windows-users) for more info on the subject.

### Process

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](http://www.vagrantup.com/downloads.html)

2. Install [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

3. Clone this repo:
   ```
   git clone https://github.com/lekum/introduction-to-ansible.git
   ```
4. Inside the folder `vagrant/servers', run `vagrant up`

5. Inside the folder `vagrant/controller`, run `vagrant up` and when it finishes, run `vagrant ssh` to enter the controller machine

6. Inside the controller machine, run `./copy_public_key.sh` and say `yes` to the questions and use `vagrant` as password

7. If you run `ansible all -m ping` you should get an output like this:
   ```
   10.0.15.22 | success >> {
       "changed": false,
       "ping": "pong"
   }
   
   10.0.15.21 | success >> {
       "changed": false,
       "ping": "pong"
   }
   
   10.0.15.23 | success >> {
       "changed": false,
       "ping": "pong"
   }
   ```
