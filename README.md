# Vagrant Development Box

This is an all in one development box that includes the following tools

**Source Control**
- `git`
- `perforce` ...ew

**Config Managment**
- `ansible`

**Provisioning**
- `terraform`

**CLI tools**
- `govc` - for interacting with vmware
- `awscli` - for interacting with amazon.
- `docker`

This box was created to help ease the transition for (mostly windows) developers into using
ansible and other more modern toolchains. Dealing with python, docker, etc can be challenging for windows users
especially on older versions of windows that do not have integrated package management (a la chocolatey).

This box is intended to simplify a workflow where you can use your native editor on your host operating system
and run your code in a (virtual) workspace that has most all of the tools you need.

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

## Notes
Big thanks to https://github.com/geerlingguy for everything he's done for ansible.
I'm "borrowing" lots of his work here. 
