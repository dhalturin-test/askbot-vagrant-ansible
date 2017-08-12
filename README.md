# Dependencies
- vagrant-vbguest

# Prepare
```
ssh-keygen -R [127.0.0.1]:2222
vagrant plugin install vagrant-vbguest
git clone https://github.com/dhalturin-test/askbot-vagrant-ansible.git
cd askbot-vagrant-ansible
```

# Steps to deploy askbot
- vagrant up
- ansible-playbook -i ansible/host.ini ansible/site.yml --private-key=.vagrant/machines/default/virtualbox/private_key

# Used versions
```
[08:34:20] {dhalturin@MacBook-Air.local}~/repos/askbot> vagrant --version
Vagrant 1.9.5

[08:41:17] {dhalturin@MacBook-Air.local}~/repos/askbot> ansible-playbook --version
ansible-playbook 1.9.6
  configured module search path = None
```

# Result
```
[13:56:44] {dhalturin@macbook-pro.it.lan}~/repos/askbot-vagrant-ansible:master> ssh 127.0.0.1 -p2222 -lvagrant -i .vagrant/machines/default/virtualbox/private_key -- facter hypervisor_type
{"hv_low"=>"kvm", "hv_high"=>"virtualbox"}

[14:15:06] {dhalturin@macbook-pro.it.lan}~/repos/askbot-vagrant-ansible:master> curl -sI http://127.0.0.1:8080/questions/
HTTP/1.1 405 METHOD NOT ALLOWED
Server: nginx/1.10.2
Date: Sat, 12 Aug 2017 11:15:21 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 0
Connection: keep-alive
Vary: Cookie
Allow: GET
Set-Cookie: csrftoken=cnlWUhj9o9mMVvuVUMp8sT4SYYR7TKP6; expires=Sat, 11-Aug-2018 11:15:21 GMT; Max-Age=31449600; Path=/
Set-Cookie: sessionid=8fa5uwx7awizvzfpl6s84b7n2hpu3x2m; expires=Sat, 26-Aug-2017 11:15:21 GMT; httponly; Max-Age=1209600; Path=/
```
