# -*- encoding: utf-8 -*-
# stub: solargraph 0.48.0 ruby lib

Gem::Specification.new do |s|
  s.name = "solargraph".freeze
  s.version = "0.48.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fred Snyder".freeze]
  s.date = "2022-12-19"
  s.description = "IDE tools for code completion, inline documentation, and static analysis".freeze
  s.email = "admin@castwide.com".freeze
  s.executables = ["solargraph".freeze]
  s.files = ["bin/solargraph".freeze]
  s.homepage = "http://solargraph.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.4.1".freeze
  s.summary = "A Ruby language server".freeze

  s.installed_by_version = "3.4.1" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<backport>.freeze, ["~> 1.2"])
  s.add_runtime_dependency(%q<benchmark>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<bundler>.freeze, [">= 1.17.2"])
  s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.4"])
  s.add_runtime_dependency(%q<e2mmap>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<jaro_winkler>.freeze, ["~> 1.5"])
  s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 2.3"])
  s.add_runtime_dependency(%q<kramdown-parser-gfm>.freeze, ["~> 1.1"])
  s.add_runtime_dependency(%q<parser>.freeze, ["~> 3.0"])
  s.add_runtime_dependency(%q<reverse_markdown>.freeze, [">= 1.0.5", "< 3"])
  s.add_runtime_dependency(%q<rubocop>.freeze, [">= 0.52"])
  s.add_runtime_dependency(%q<thor>.freeze, ["~> 1.0"])
  s.add_runtime_dependency(%q<tilt>.freeze, ["~> 2.0"])
  s.add_runtime_dependency(%q<yard>.freeze, ["~> 0.9", ">= 0.9.24"])
  s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  s.add_development_dependency(%q<public_suffix>.freeze, ["~> 3.1"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5", ">= 3.5.0"])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.14"])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 3.6"])
end
