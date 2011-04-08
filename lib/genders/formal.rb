class Genders::Formal
  @@formals = {
    "a"=>6, "above"=>4, "and"=>-4, "are"=>28, "around"=>42, "as"=>23, "at"=>6, "be"=>-17, "below"=>8, "her"=>-9, 
    "hers"=>-3, "if"=>-47, "is"=>8, "it"=>6, "many"=>6, "me"=>-4, "more"=>34, "myself"=>-4, "not"=>-27, 
    "said"=>5, "she"=>-6, "should"=>-7, "the"=>7, "these"=>8, "to"=>2, "was"=>-1, "we"=>-8, "what"=>35, 
    "when"=>-17, "where"=>-18, "who"=>19, "with"=>-52, "your"=>-17
  }

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
    str.split.select{ |word| @@formals.keys.include?(word.downcase) }.inject(0) do |total, word|
      total + @@formals[word]
    end
  end
end
