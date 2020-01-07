
Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
    config.vm.network "forwarded_port", guest:8080, host: 8080


    # Synced app folder
    config.vm.synced_folder "environment", "/environment"

    # Provisioning
    config.vm.provision "shell", path: "environment/provision.sh"
end
