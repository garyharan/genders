class Genders::Informal < Genders::Guesser
  @male_words = {
    "as"=>37, "ever"=>21, "good"=>31, "if"=>25, "in"=>10, "is"=>19, "now"=>33, "some"=>58, 
    "something"=>26, "the"=>17, "this"=>44, "well"=>15
  }
  @female_words ={
    "actually"=>-49, "am"=>-42, "because"=>-55, "but"=>-43, "everything"=>-44, "has"=>-33, 
    "him"=>-73, "like"=>-43, "more"=>-41, "out"=>-39, "since"=>-25, "so"=>-64, "too"=>-38
  }
end
