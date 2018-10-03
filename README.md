# Manning - [Get Programming with Node.js](https://www.manning.com/books/get-programming-with-node-js)


[![alt text](https://images.manning.com/720/960/resize/book/0/566e4e3-1f78-41ac-9401-4c34471547a6/Wexler_GetProg-nodejs_hiresmeap.png "Get Programming with Node.js")](https://www.manning.com/books/get-programming-with-node-js)


## Run Node.js on Ubuntu through Vagrant

It is easy to set up a Node.js development server, through Vagrant. In this case the created Vagrant box is based on
Ubuntu Xenial64 (v16.04) and uses VirtualBox to run the guest virtual machine.

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/intro/index.html)

The `Vagrantfile` is based on the Vagrant box [`ubuntu/xenial64`](https://app.vagrantup.com/ubuntu/boxes/xenial64). It installs [Node Version Manager (nvm)](https://github.com/creationix/nvm). Then `nvm` is used to install [Node Package Manager (npm)](https://www.npmjs.com/) and [Node.js](https://nodejs.org/).
At the top of the `Vagrantfile` the nvm version and node version are set.



## Using the Vagrant box

Launch the vagrant box

    vagrant up

> After some time not using the box it is possible to get a warning that a newer version of the vagrant box is available. Use the command `vagrant box update` to get the latest version of the used box, as mentioned in the `Vagrantfile`.


Go into the vagrant box (guest) machine

    vagrant ssh

Inside the vagrant box, go to the shared directory which is Synchronized with this project directory.

    cd /vagrant

Leave the vagrant box (guest)

    exit

Halt the vagrant box, stops the VirtualBox machine. But keep it for quick relaunch.

    vagrant halt

Destroy the vagrant box, stops and removes the VirtualBox machine. Less disk space usage. Longer to launch again.

    vagrant destroy


## Development

Once the Vagrant box is launched, get inside through `vagrant ssh` and goto the `/vagrant` directory. This directory is mounted from the host, from where the Vagrant box was launched. So files can be edited on the host as well as on the guest system.

Running `npm`, `node` and others can now be done on the guest machine.

Node runs on port `3000`, which is made available to the host as well.

### Mongodb

Mongodb runs on port `27017`, which is made available to the host as well.
