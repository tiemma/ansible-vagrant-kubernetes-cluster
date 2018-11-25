# Setting up a Kubernetes maste node using Vagrant and Ansible

This was done in  order to find the issues to a problem on Stackoverflow [here](https://askubuntu.com/questions/1095382/setting-up-a-kubernetes-cluster-on-ubuntu-18-04)


## Setup

In order to test this, all applications needed to run the initial vagrant file which starts up the VMs and orchestrates the node setup using ansible provisioning is also provided.


To setup your local environment, run

> bash install-local-apps.sh


That should install vagrant and ansible which should help you in running the VMs from Vagrant


## Vagrant file

Vagrant is used to orchestrate starting up VMs and configuring them likewise. 

You can spin up all the instances using 

> vagrant up

This would setup the VMs, download the box OS [ubuntu/bionic] and also provision each instance, using ubuntu here.


## Ansible

This is an Infrastructure As A Code tool to help you with setting up a base machine for a specific task.
In my case, spinning up a two worker node cluster with a master node.

All the playbooks are included in the [kube-cluster](kube-cluster) folder for ease of access.

Various ansible modules were used to avoid rewriting some things and a couple bash scripting for light proxy setup environments, such as mine.

I couldn't expose the proxies directly so I abstracted everything that uses it. It works just fine without a proxy also.

