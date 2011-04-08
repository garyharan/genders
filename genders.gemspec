# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{genders}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gary Haran"]
  s.date = %q{2011-04-08}
  s.email = %q{gary.haran@gmail.com}
  s.files = ["lib/genders/formal.rb", "lib/genders/informal.rb", "lib/genders.rb", "Rakefile", "README.md"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.1}
  s.summary = %q{Provides an easy way to determine the gender of an author from text.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
