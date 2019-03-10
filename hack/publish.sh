#!/bin/bash

BOX_GUID="$(VBoxManage list runningvms | awk '{print $2}')"

vagrant package --base "$BOX_GUID" \
                --vagrantfile=Vagrantfile \
                --output vagrant_developer_box.box
