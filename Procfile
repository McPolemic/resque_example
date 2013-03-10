workers:     rake resque:workers QUEUE=* COUNT=5 TERM_CHILD=1
web:         resque-web resque-conf.rb -F
task_server: ruby lib/idea_analyzer.rb