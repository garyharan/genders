require_relative '../lib/genders.rb'
require 'minitest/autorun'

describe Genders do
  describe Genders::Formal do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Formal.analyze("if your where with her and was should when").gender
    end

    it "provides a gender score" do
      assert_equal 47, Genders::Formal.analyze("if more").female_score
      assert_equal 34, Genders::Formal.analyze("if more").male_score
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Formal.analyze("many are said above the more as around").gender
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Formal.analyze("should the").gender
    end

    it "should provide percentage as well as gender" do
      analysis = Genders::Formal.analyze("above around")
      assert_equal "male", analysis.gender
      assert_equal 100.0, analysis.percentage
      analysis = Genders::Formal.analyze("a she")
      assert_equal "indeterminate", analysis.gender
      assert_equal 50.0, analysis.percentage
      analysis = Genders::Formal.analyze("her and your")
      assert_equal "female", analysis.gender
      assert_equal 100.0, analysis.percentage
    end

    it "should accept uppercase text" do
      assert_equal 47, Genders::Formal.analyze("If").female_score
    end
  end

  describe "when in an informal setting" do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Informal.analyze("actually everything more out").gender
    end
    
    it "provides a gender score" do
      assert_equal 55, Genders::Informal.analyze("because something").female_score
      assert_equal 26, Genders::Informal.analyze("because something").male_score
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Informal.analyze("if in now is this well").gender
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Informal.analyze("if since").gender
    end

    it "should provide percentage as well as gender" do
      analysis = Genders::Formal.analyze("above around")
      assert_equal "male", analysis.gender
      assert_equal 100.0, analysis.percentage
      analysis = Genders::Formal.analyze("a she")
      assert_equal "indeterminate", analysis.gender
      assert_equal 50.0, analysis.percentage
      analysis = Genders::Formal.analyze("her and your")
      assert_equal "female", analysis.gender
      assert_equal 100.0, analysis.percentage
    end
  end
end
