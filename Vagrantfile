# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #config.vm.box = "puppetlabs/centos-7.2-64-puppet"
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", inline: "rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm 2> /dev/null || echo OK"
  config.vm.provision "shell", inline: "yum install -y puppet 2> /dev/null && echo OK || echo FAIL"
  config.vm.provision "puppet"
end
