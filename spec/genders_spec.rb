require_relative '../lib/genders.rb'
require 'minitest/autorun'

describe Genders do
  describe Genders::Formal do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Formal.guess("if your where with her and was should when")
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Formal.guess("many are said above the more as around")
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Formal.guess("should the")
    end
  end

  describe "when in an informal setting" do
    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders::Informal.guess("actually everything more out")
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders::Informal.guess("if in now is this well")
    end

    it "should say when it cannot find gender" do
      assert_equal "indeterminate", Genders::Informal.guess("if since")
    end
  end
end
