Gem::Specification.new do |s|
  s.name = "muflax"
  s.version = "0.1.24"

  s.authors = ["muflax"]
  s.summary = "muflax standard library"
  s.description = "collection of stuff muflax always uses in scripts"
  s.email = "mail@muflax.com"
  s.license = "GPL-3"
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = `git ls-files`.split("\n")
  s.homepage = "http://github.com/muflax/ruby-muflax"
  s.require_paths = ["lib"]

  s.add_dependency "activesupport", "~> 4"
  s.add_dependency "awesome_print"
  s.add_dependency "chronic"
  s.add_dependency "highline"
  s.add_dependency "pry"
  s.add_dependency "range_math"
  s.add_dependency "trollop"
  s.add_dependency "debug_inspector"

  s.add_development_dependency "rake"
end
