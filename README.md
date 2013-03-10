# Resque Example

This contains a small example of resque, together with the plugins resque-status
and resque-scheduler, and the default front-end that they show.

# Requirements

* Vagrant
* VirtualBox

# Running

After cloning the repository, run the following:

    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant
    $ foreman start

From there, go to http://localhost:4567 and watch the jobs be added and processed!

# Editing

There are two files generating and processing the work. `lib/idea_analyzer.rb` will 
pick a random word from a word list and create a new task every second. 
`lib/word_analyzer.rb` is the worker. It loops through each letter in the given word,
passing the letter it's on to redis-status and then sleeping one second.
