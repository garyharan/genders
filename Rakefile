require 'rake'
require 'rake/gempackagetask'

task :default => [:test]

task :test do
  ruby "spec/genders_spec.rb"
end

GEM = "genders"
GEM_VERSION = "0.1.0"
SUMMARY = "Provides an easy way to determine the gender of an author from text."
AUTHOR = "Gary Haran"
EMAIL = "gary.haran@gmail.com"
HOMEPAGE = ""

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = SUMMARY
  s.require_paths = ['lib']
  s.files = FileList['app_generators/**/*', 'bin/*', 'lib/**/*.rb', '[A-Z]*'].to_a

  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Install the gem locally"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end

desc "Create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end
