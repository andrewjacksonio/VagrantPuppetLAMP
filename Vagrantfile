# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  config.vm.define "web", primary: true do |web|
    web.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    web.vm.hostname = "web.andrewjackson.io"
    web.vm.network :private_network, ip: "192.168.33.10"
    web.vm.network :forwarded_port, guest: 80, host: 80
	
	web.vm.provision "puppet" do |puppet|
		puppet.manifests_path = "puppet/manifests/"
		puppet.manifest_file = "web.pp"
	end
  end

  config.vm.define "db" do |db|
    db.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    db.vm.hostname = "mysql.andrewjackson.io"
    db.vm.network :private_network, ip: "192.168.33.11"
	
	db.vm.provision "db" do |db|
		puppet.manifests_path = "puppet/manifests/"
		puppet.manifest_file = "db.pp"
	end
  end

  config.vm.synced_folder ".", "/vagrant", type: "smb", smb_password: "vagrant", smb_username: "vagrant"
end
