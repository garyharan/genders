require_relative '../lib/genders.rb'
require 'minitest/autorun'

describe Genders do
  describe "when in a formal setting" do
    it "provides a string a score" do
      assert_equal -52, Genders.score("with")
    end

    it "detects a match for a stereotypical woman" do
      assert_equal "female", Genders.determine("if your where with her and was should when")
    end

    it "detects a match for a stereotypical man" do
      assert_equal "male", Genders.determine("many are said above the more as around")
    end
  end

  describe "when in an informal setting" do
    # it "detects a match for a stereotypical woman"
    # it "detects a match for a stereotypical man"
  end
end
