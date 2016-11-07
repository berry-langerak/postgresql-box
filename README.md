# PostgreSQL development box

This is a box I created to use for the PostgreSQL workshop at Enrise. It contains 

* **PHP** 7.0.12;
* **Nginx** 1.10.2;
* **PostgreSQL** 9.5.5 -- both client and server.

## Get started

1. `git clone git@github.com:berry-langerak/postgresql-box.git postgresql-box`
1. `cd postgresql-box`
1. `git submodule update --init --recursive`
1. `cp Vagrantfile.local.dist Vagrantfile.local`
1. `vagrant up`

That's it. Visit http://192.168.56.231, which should greet you with a hello world 
from `public/index.php`.
