require_relative '../lib/genders.rb'
require 'minitest/autorun'

describe Genders do
  describe Genders::Formal do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Formal.analyze("if your where with her and was should when").gender
    end

    it "provides a gender score" do
      assert_equal -47, Genders::Formal.analyze("if more").female_score
      assert_equal 34,  Genders::Formal.analyze("if more").male_score
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Formal.analyze("many are said above the more as around").gender
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Formal.analyze("should the").gender
    end

    it "should provide confidence as well as gender" do
      assert_equal 0, Genders::Formal.analyze("should the").confidence
      analysis = Genders::Formal.analyze("if you plug the hole in the counter you should be happy")
      assert_equal 0, analysis.confidence
    end

    it "should accept uppercase text" do
      assert_equal -47, Genders::Formal.analyze("If").female_score
    end
  end

  describe "when in an informal setting" do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Informal.analyze("actually everything more out").gender
    end
    
    it "provides a gender score" do
      assert_equal -55, Genders::Informal.analyze("because something").female_score
      assert_equal 26,  Genders::Informal.analyze("because something").male_score
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Informal.analyze("if in now is this well").gender
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Informal.analyze("if since").gender
    end

    it "should give a confidence level" do
      analysis = Genders::Informal.analyze("If you are happy with yourself.")
      assert_equal 25,  analysis.male_score
      assert_equal 0,   analysis.female_score
      assert_equal 100, analysis.confidence
    end
  end
end
