# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "trusty32"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.provision "file", source: "~/.btconfig.json", destination: "~/.btconfig.json"
  config.vm.provision :shell, privileged: false, path: "bin/vagrant_up.sh"
  config.vm.network :forwarded_port, host: 3000, guest: 3000
  config.vm.network :forwarded_port, host: 4306, guest: 3306
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
end
