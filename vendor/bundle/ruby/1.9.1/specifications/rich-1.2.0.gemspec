# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rich"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bastiaan Terhorst"]
  s.date = "2012-07-19"
  s.description = ""
  s.email = ["bastiaan@perceptor.nl"]
  s.homepage = "https://github.com/bastiaanterhorst/rich"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Rich is an opinionated WYSIWYG editor for Rails based on CKEditor."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<paperclip>, [">= 0"])
      s.add_runtime_dependency(%q<rack-raw-upload>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2.0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<paperclip>, [">= 0"])
      s.add_dependency(%q<rack-raw-upload>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<mime-types>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2.0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<paperclip>, [">= 0"])
    s.add_dependency(%q<rack-raw-upload>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<mime-types>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
  end
end
