# PostgreSQL development box

This is a box I created to use for the PostgreSQL workshop at Enrise. It contains 

* **PHP** 7.0.12;
* **Nginx** 1.10.2;
* **PostgreSQL** 9.5.5 -- both client and server.

## Important notes

The PostgreSQL server listens specifically on "192.168.56.231". That also means that 
you probably don't want to change the IP address in your Vagrantfile.local. All other
values are fair game, as far as I care ;)

## Get started

*Note*: if you happen to be using something other than VirtualBox (like the way more 
awesome libvirt), you will have to customise your `Vagrantfile.local` before doing 
the first `vagrant up`.

1. `git clone git@github.com:berry-langerak/postgresql-box.git postgresql-box`
1. `cd postgresql-box`
1. `git submodule update --init --recursive`
1. `cp Vagrantfile.local.dist Vagrantfile.local`
1. `vagrant up`

That's it. Visit http://192.168.56.231, which should greet you with a hello world 
from `public/index.php`.
