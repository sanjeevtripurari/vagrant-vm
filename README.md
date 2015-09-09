# vagrant-vm

For all my open source project, I am using vagrant, which shares the common .m2, and Projects path.

The changes can be made by IntelliJ, and build executed in the vagrant box.

Once have proper vagrant box running, we can create snapshot, in case of crash or further changes which mess up, we can load the snapshot.

## Setting up Vagrant
* Download https://www.virtualbox.org/wiki/Downloads
* VirtualBox platform packages. The binaries are released under the terms of the GPL version 2. (for your OS)
* Mine is: VirtualBox 5.0.4 for OS X hosts  amd64
* Extension: VirtualBox 5.0.4 Oracle VM VirtualBox Extension Pack  All supported platforms 
* Download: http://vagrantup.com/downloads.html
* Mine: MAC OS X [ Universal (32 and 64-bit)]
* Once vagrant is installed, it will be in (/opt/vagrant/)
* export PATH=/opt/vagrant/bin:$PATH
* for extension to autoload: 
* #. $ vagrant plugin install vagrant-vbguest
* 
## Loading previously stored vagrant box
* vagrant box add sanubuntu hadoop-ubuntu1.box 

## Vagrant plugins, need to mount local partition
* vagrant plugin install vagrant-vbguest

## Vagrant up
* vagrant up
* vagrant ssh
* if ssh is causing issues then check
* vagrant ssh-config
*   PasswordAuthentication no
*  IdentityFile /Users/sanjeev.tripurari/.vagrant.d/insecure_private_key
* * Check IdentityFile, what file is provided
* cp  ~/.ssh/id_rsa /Users/sanjeev.tripurari/.vagrant.d/insecure_private_key
* first time it will have issues, and in case you have made network interface address change then 
* rm -v /etc/udev/rules.d/70-persistent-net.rules  (in vagrant box)
* 
* voila we are done.. if you face any other issues do comment me.




