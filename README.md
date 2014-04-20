## Consul Vagrant

An easy way to get a cluster of Consul boxes to play with.

These boxes are built with [consul-cookbook](https://github.com/darron/consul-cookbook) and are available on Vagrant Cloud as `darron/consul`.

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

When you're done - just `vagrant destroy` to cleanup.
