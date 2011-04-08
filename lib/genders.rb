module Genders
  class Guesser
    def self.guess(str)
      total = self.score(str)
      if total > 0
        return "male"
      elsif total < 0
        return "female"
      else
        return "indeterminate"
      end
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
