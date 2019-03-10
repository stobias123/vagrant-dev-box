# Vagrant Development Box

This is an all in one development box that includes the following tools

```
    ## Source Control
    - Git
    - Perforce ...ew

    ## Config Managment
    - Ansible

    ## Provisioning
    - Terraform
    ## CLI tools
    - govc - for interacting with vmware
    - awscli - for interacting with amazon.
```

This box was created to help ease the transition for (mostly windows) developers into using
ansible and other more modern toolchains.

The basic idea behind this box is to use an editor on your host machine to manage your code and workspace
then run the code in the vagrant box for testing.

## Getting Started

**TL;DR** - You can copy the vagrantfile in the `examples/` dir and `vagrant up` it.

Create a vagrant file like this
```
Vagrant.configure("2") do |config|
  config.vm.box = "stobias123/vagrant_developer_box"
end
```

I like to have a workspace in `$HOME/repos`. So make sure that's mounted by adding the below block

```
config.vm.synced_folder "<PATH_TO_YOUR_REPO>/", "/vagrant/repos", create: true
```


1. `vagrant up`
2.

## TODO:
1. Add a `packer.json` for some CI for ci
