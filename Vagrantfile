# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.forward_port 8080, 8080
  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "."
    puppet.manifest_file  = "init.pp"
  end
end
