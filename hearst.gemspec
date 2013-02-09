# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hearst}
  s.version = "0.0.1"
  s.description = %q{Hearst API Wrapper}
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Raquel Hernandez", "Haris Amin"]
  s.date = %q{2013-02-09}
  s.email = %q{maggit@gmail.com aminharis7@gmail.com}
  s.files = [
    "README.md",
    "lib/hearst.rb",
    "lib/hearst/base.rb",
    "lib/hearst/articles_proxy.rb",
    "lib/hearst/article.rb",
    "lib/hearst/sections_proxy.rb",
    "lib/hearst/section.rb",
    "LICENSE",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{https://github.com/maggit/hearst}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Hearst API wrapper}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<typhoeus>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">=0"])
      s.add_runtime_dependency(%q<multipart-post>, [">=0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<autotest-standalone>, [">= 0"])
      s.add_development_dependency(%q<metrical>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-remote>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
      s.add_development_dependency(%q<plymouth>, [">= 0"])
    else
      s.add_dependency(%q<typhoeus>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<hashie>, [">=0"])
      s.add_dependency(%q<multipart-post>, [">=0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<autotest-standalone>, [">= 0"])
      s.add_development_dependency(%q<metrical>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-remote>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
      s.add_development_dependency(%q<plymouth>, [">= 0"])
    end
  else
    s.add_dependency(%q<typhoeus>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<hashie>, [">=0"])
    s.add_dependency(%q<multipart-post>, [">=0"])
    s.add_development_dependency(%q<rspec>, [">= 0"])
    s.add_development_dependency(%q<autotest-standalone>, [">= 0"])
    s.add_development_dependency(%q<metrical>, [">= 0"])
    s.add_development_dependency(%q<simplecov>, [">= 0"])
    s.add_development_dependency(%q<pry>, [">= 0"])
    s.add_development_dependency(%q<pry-remote>, [">= 0"])
    s.add_development_dependency(%q<pry-nav>, [">= 0"])
    s.add_development_dependency(%q<plymouth>, [">= 0"])
  end
end
