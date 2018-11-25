 sudo apt-get update
 sudo apt-get install software-properties-common
 sudo apt-add-repository --yes --update ppa:ansible/ansible
 sudo apt-get install -y ansible vagrant

 # Install the proxy conf [if you're on  a proxy network]
 vagrant plugin install vagrant-proxyconf 