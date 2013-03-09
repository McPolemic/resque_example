require 'resque'
require './word_analyzer'

idea = ARGV
puts "Analyzing your idea: #{idea.join(" ")}"
idea.each do |word|
  puts "Asking for a job to analyze: #{word}"
  # This is where we would enqueue something
  # Resque.enqueue(WordAnalyzer, word)
  WordAnalyzer.create :word => word
end
