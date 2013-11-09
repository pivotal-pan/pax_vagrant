# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "centos64"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"
  config.vm.customize ["modifyvm", :id, "--memory", 6164]
  config.vm.customize ["modifyvm", :id, "--cpus", 4]
  config.vm.network :hostonly, "192.168.33.10"

  config.vm.share_folder "CetasMain", "/root/workspace/CetasMain", "/Users/pivotal/workspace/CetasMain"
  config.vm.share_folder "CetasXLibs", "/root/workspace/xlibs", "/Users/pivotal/workspace/CetasMain"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe("ssh")
    chef.add_recipe("yum")
    chef.add_recipe("deploy")
    chef.add_recipe("prepare_filesystem")
    chef.add_recipe("configure")
    chef.add_recipe("start_services")
  end
end
