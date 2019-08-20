# Install required plugins
required_plugins = %w( vagrant-hostsupdater vagrant-berkshelf )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "UberApp", "/home/ubuntu/UberApp"
    app.vm.provision "shell", inline: "echo DB_HOST=192.168.10.150 >> .bashrc"
    app.vm.provision "chef_solo" do |chef|
      chef.add_recipe "nginx::default"
      chef.add_recipe "python::default"
      chef.arguments = "--chef-license accept"
    end
  end
end
