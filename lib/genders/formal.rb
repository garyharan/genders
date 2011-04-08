class Genders::Formal < Genders::Guesser
  @male_words = {
    "a"=>6, "above"=>4, "are"=>28, "around"=>42, "as"=>23, "at"=>6, "below"=>8, "is"=>8, "it"=>6, 
    "many"=>6, "more"=>34, "said"=>5, "the"=>7, "these"=>8, "to"=>2, "what"=>35, "who"=>19
  }

  @female_words = {
    "and"=>-4, "be"=>-17, "her"=>-9, "hers"=>-3, "if"=>-47, "me"=>-4, "myself"=>-4, "not"=>-27, 
    "she"=>-6, "should"=>-7, "was"=>-1, "we"=>-8, "when"=>-17, "where"=>-18, "with"=>-52, "your"=>-17
  }
end
