# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos7"
  config.vm.hostname = "centos7"
  config.vm.box_url = "https://github.com/holms/vagrant-centos7-box/releases/download/7.1.1503.001/CentOS-7.1.1503-x86_64-netboot.box"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.provider "virtualbox" do |vb|
   vb.customize ["modifyvm", :id, "--memory", "2048"]
 end
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true ,privileged: true
end
