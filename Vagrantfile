# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.define :ppm do |ppm_config|
    ppm_config.vm.box = "CentOS63"
    ppm_config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130309.box"
    ppm_config.vm.forward_port 8041, 8041
    ppm_config.vm.network :hostonly, "172.16.1.10"
    ppm_config.vm.share_folder "puppet", "/etc/puppet", "../puppet", :create=>true 

    ppm_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "ppm.pp"
    end

 end

  config.vm.define :client do |client_config|
    client_config.vm.box = "CentOS63"
    client_config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130309.box"
    client_config.vm.network :hostonly,  "172.16.1.11"
   end
end



