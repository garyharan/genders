class Genders::Informal
  @@informals = {
    "actually"=>-49, "am"=>-42, "as"=>37, "because"=>-55, "but"=>-43, "ever"=>21, "everything"=>-44, "good"=>31, 
    "has"=>-33, "him"=>-73, "if"=>25, "in"=>10, "is"=>19, "like"=>-43, "more"=>-41, "now"=>33, "out"=>-39, 
    "since"=>-25, "so"=>-64, "some"=>58, "something"=>26, "the"=>17, "this"=>44, "too"=>-38, "well"=>15
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
    str.split.select{ |word| @@informals.keys.include?(word.downcase) }.inject(0) do |total, word|
      total + @@informals[word]
    end
  end
end
