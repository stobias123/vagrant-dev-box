Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.4"

 config.vm.provision "shell", path: "scripts/init.sh"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "vagrant.yml"
    ansible.become = true
    ansible.galaxy_role_file = "requirements.yml"
    ansible.galaxy_command = "ansible-galaxy install --role-file=%{role_file}"
  end

end
