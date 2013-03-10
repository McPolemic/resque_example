require 'resque'
require './lib/word_analyzer'

words = %w{ this is a series of words to choose from for entropy and goodness abound }
while true
  word = words.sample
  puts "Asking for a job to analyze: #{word}"
  $stdout.flush
  WordAnalyzer.create :word => word
  sleep 1
end
