# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # Begin server1
  config.vm.define "server1" do |server1|
    server1.vm.hostname = "server1"
    server1.vm.box = "darron/consul"

    server1.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server1.vm.network "private_network", ip: "192.168.2.2"

    config.vm.provision "shell", path: "scripts/master.sh"
  end
  # End server1

  # Begin server2
  config.vm.define "server2" do |server2|
    server2.vm.hostname = "server2"
    server2.vm.box = "darron/consul"

    server2.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server2.vm.network "private_network", ip: "192.168.2.3"
    config.vm.provision "shell", path: "scripts/follower1.sh"
  end

  # Begin server3
  config.vm.define "server3" do |server3|
    server3.vm.hostname = "server3"
    server3.vm.box = "darron/consul"

    server3.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server3.vm.network "private_network", ip: "192.168.2.4"
    config.vm.provision "shell", path: "scripts/follower2.sh"
  end

  # Begin server4
  config.vm.define "server4" do |server4|
    server4.vm.hostname = "server4"
    server4.vm.box = "darron/consul"

    server4.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server4.vm.network "private_network", ip: "192.168.2.5"
    config.vm.provision "shell", path: "scripts/follower3.sh"
  end

  # Begin server5
  config.vm.define "server5" do |server5|
    server5.vm.hostname = "server5"
    server5.vm.box = "darron/consul"

    server5.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "512" ]
    end

    server5.vm.network "private_network", ip: "192.168.2.6"
    config.vm.provision "shell", path: "scripts/follower4.sh"
  end
end
