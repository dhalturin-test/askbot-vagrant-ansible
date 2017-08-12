# Dependencies
- vagrant-vbguest

# Steps to deploy askbot
```
ssh-keygen -R [127.0.0.1]:2222
vagrant plugin install vagrant-vbguest
git clone https://github.com/dhalturin-test/askbot-vagrant-ansible.git
cd askbot-vagrant-ansible
```

- vagrant up
- ansible-playbook -i ansible/host.ini ansible/site.yml --private-key=.vagrant/machines/default/virtualbox/private_key

# Used versions
```
[08:34:20] {dhalturin@MacBook-Air.local}~/repos/askbot> vagrant --version
Vagrant 1.9.5

[08:41:17] {dhalturin@MacBook-Air.local}~/repos/askbot> ansible-playbook --version
ansible-playbook 1.9.6
  configured module search path = None

[13:56:44] {dhalturin@macbook-pro.it.lan}~/repos/askbot-vagrant-ansible:master> ssh 127.0.0.1 -p2222 -lvagrant -i .vagrant/machines/default/virtualbox/private_key -- facter hypervisor_type
{"hv_low"=>"kvm", "hv_high"=>"virtualbox"}
```
