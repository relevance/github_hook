Gem::Specification.new do |s|
  s.name = %q{github_hook}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new("= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rob Sanheim"]
  s.date = %q{2008-08-05}
  s.description = %q{Wrapper around the github post receive JSON payload.}
  s.email = %q{opensource@thinkrelevance.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/github_hook.rb", "README.txt"]
  s.files = ["CHANGELOG", "github_hook.gemspec", "lib/github_hook.rb", "Manifest", "Rakefile", "README.txt", "spec/github_hook_spec.rb", "spec/helper.rb", "spec/payload.rb", "spec/vendor/bacon-0.9.0/bin/bacon", "spec/vendor/bacon-0.9.0/COPYING", "spec/vendor/bacon-0.9.0/lib/bacon.rb", "spec/vendor/bacon-0.9.0/Rakefile", "spec/vendor/bacon-0.9.0/RDOX", "spec/vendor/bacon-0.9.0/README", "spec/vendor/bacon-0.9.0/test/spec_bacon.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://opensource.thinkrelevance.com/wiki/github_hook}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Github_hook", "--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{thinkrelevance}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Wrapper around the github post receive JSON payload.}
  s.test_files = ["spec/github_hook_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
