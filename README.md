# Resque Example

This contains a small example of resque, together with the plugins resque-status and resque-scheduler, and the default front-end that they sho
w.

# Running

After cloning the repository, run the following:

    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant
    $ foreman start

From there, go to http://localhost:4567 and watch the jobs be added and processed!

# Requirements

* Vagrant
* VirtualBox
