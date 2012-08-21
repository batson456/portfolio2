# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "html_truncator"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bruno Michel"]
  s.date = "2011-12-06"
  s.description = "Wants to truncate an HTML string properly? This gem is for you."
  s.email = "bmichel@menfin.info"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "http://github.com/nono/HTML-Truncator"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Wants to truncate an HTML string properly? This gem is for you."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
  end
end
