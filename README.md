# Steps to deploy askbot
git clone https://github.com/dhalturin-test/askbot-vagrant-ansible.git
cd askbot-vagrant-ansible

- vagrant up
- ansible-playbook -i ansible-host.ini ansible.yml --private-key=.vagrant/machines/default/virtualbox/private_key

# Used versions
```
[08:34:20] {dhalturin@MacBook-Air.local}~/repos/askbot> vagrant --version
Vagrant 1.9.5

[08:41:17] {dhalturin@MacBook-Air.local}~/repos/askbot> ansible-playbook --version
ansible-playbook 1.9.6
  configured module search path = None
```
