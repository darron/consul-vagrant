## Consul Vagrant

An easy way to get a cluster of Consul boxes to play with.

These boxes are built with [consul-cookbook](https://github.com/darron/consul-cookbook) and are available on Vagrant Cloud as [darron/consul](https://vagrantcloud.com/darron/consul).

```
git clone
vagrant up server1
vagrant ssh server1
sudo tail -f /var/log/upstart/consul.log
```
Open another terminal or tab and launch the others:

```
vagrant up server2
vagrant up server3
vagrant up server4
vagrant up server5
```

You should have a fully working 5 member cluster at the end of this.

To access the built in web ui that's new on 0.2.0 - you can add something similar to your `~/.ssh/config` file:

```
Host consulserver1
  Hostname 127.0.0.1
  Port 2222
  IdentityFile /Users/your-name-goes-here/.vagrant.d/insecure_private_key
  User vagrant
  LocalForward 8500 localhost:8500
```

Double check for Hostname, Port and Identity file - the [web ui looks great](http://shared.froese.org/2014/0505100045j18fz.jpg).

When you're done - just `vagrant destroy` to cleanup.
