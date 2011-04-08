require 'ostruct'

module Genders
  class Guesser
    def self.analyze(text)
      score = OpenStruct.new
      score.female_score = self.female_score self.female_determinate_words text
      score.male_score   = self.male_score self.male_determinate_words text
      score.total        = score.female_score + score.male_score
      if score.total > 0
        score.gender = "male"
      elsif score.total < 0
        score.gender = "female"
      else
        score.gender = "indeterminate"
      end
      score
    end

    def self.determinate_words(text)
      text.split.select{ |word| @female_words.merge(@male_words).keys.include?(word.downcase) }
    end

    def self.male_determinate_words(text)
      text.split.select{ |word| @male_words.keys.include? word.downcase }
    end

    def self.female_determinate_words(text)
      text.split.select{ |word| @female_words.keys.include? word.downcase }
    end

    def self.male_score(words)
      words.inject(0) do |total, word|
        total + @male_words[word]
      end
    end

    def self.female_score(words)
      words.inject(0) do |total, word|
        total + @female_words[word]
      end
    end
  end
end

require_relative 'genders/formal'
require_relative 'genders/informal'
