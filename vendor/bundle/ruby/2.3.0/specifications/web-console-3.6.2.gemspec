# -*- encoding: utf-8 -*-
# stub: web-console 3.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "web-console".freeze
  s.version = "3.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charlie Somerville".freeze, "Genadi Samokovarov".freeze, "Guillermo Iguaran".freeze, "Ryan Dao".freeze]
  s.date = "2018-04-29"
  s.email = ["charlie@charliesomerville.com".freeze, "gsamokovarov@gmail.com".freeze, "guilleiguaran@gmail.com".freeze, "daoduyducduong@gmail.com".freeze]
  s.homepage = "https://github.com/rails/web-console".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "2.5.2.1".freeze
  s.summary = "A debugging tool for your Ruby on Rails applications.".freeze

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 5.0"])
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5.0"])
      s.add_runtime_dependency(%q<actionview>.freeze, [">= 5.0"])
      s.add_runtime_dependency(%q<bindex>.freeze, [">= 0.4.0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 5.0"])
      s.add_dependency(%q<activemodel>.freeze, [">= 5.0"])
      s.add_dependency(%q<actionview>.freeze, [">= 5.0"])
      s.add_dependency(%q<bindex>.freeze, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 5.0"])
    s.add_dependency(%q<activemodel>.freeze, [">= 5.0"])
    s.add_dependency(%q<actionview>.freeze, [">= 5.0"])
    s.add_dependency(%q<bindex>.freeze, [">= 0.4.0"])
  end
end
