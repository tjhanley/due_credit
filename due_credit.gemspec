# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
require File.expand_path("../lib/due_credit/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "due_credit"
  s.version = DueCredit::VERSION
  s.authors = [ "Thomas Hanley" ]
  s.email = [ "tjhanleyx@gmail.com" ]
  s.homepage = "http://github.com/tjhanley"
  s.summary = "#{s.name}-#{s.version}"
  s.description = "The system will give the user credit for the referral. You can set a threshold on a campaign so the user gets full credit"
  #s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency "activesupport" , "~> 3.2.13"
  s.add_dependency "rails"         , "~> 3.2.13"
end