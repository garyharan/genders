require 'ostruct'

module Genders
  class Guesser
    def self.guess(str)
      score = OpenStruct.new
      score.total = self.score(str)
      if score.total > 0
        score.gender = "male"
      elsif score.total < 0
        score.gender = "female"
      else
        score.gender = "indeterminate"
      end
      score
    end

    def self.score(str)
      str.split.select{ |word| @words.keys.include?(word.downcase) }.inject(0) do |total, word|
        total + @words[word]
      end
    end
  end
end

require_relative 'genders/formal'
require_relative 'genders/informal'
