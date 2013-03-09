require 'time'
require 'resque/status'

class WordAnalyzer
    include Resque::Plugins::Status
    @queue = "word_analysis"

    def perform
        word = options['word']
        total = word.length
        i = 0

        puts "Starting analysis on #{word}"
        while i < total
            at(i, total, "Processing character #{word[i]}")
            sleep 1
            i += 1
        end
        puts "Finished analysis on #{word}"
    end
end
