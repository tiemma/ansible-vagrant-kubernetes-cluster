N = 3
(1..N).each do |machine_id|

    config.vm.box = "ubuntu/bionic64"
    config.ssh.insert_key = false

    config.vm.define "machine#{machine_id}" do |machine|
        machine.vm.hostname = "machine#{machine_id}"
        machine.vm.network "private_network", ip: "192.168.77.#{20+machine_id}"

        # Only execute once the Ansible provisioner,
        # when all the machines are up and ready.
        if machine_id == N
            machine.vm.provision :ansible do |ansible|
                # Disable default limit to connect to all the machines
                ansible.limit = "all"
                ansible.verbose = "v"
                ansible.playbook = "playbook.yml"
            end
        end
    end

end