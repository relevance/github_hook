require 'rubygems'
require 'echoe'
require './lib/github_hook.rb'

Echoe.new('github_hook', GithubHook::VERSION) do |p|
  p.rubyforge_name = 'thinkrelevance'
  p.author = 'Rob Sanheim'
  p.email = 'opensource@thinkrelevance.com'
  p.summary = "Wrapper around the github post receive JSON payload."
  p.url = "http://opensource.thinkrelevance.com/wiki/github_hook"
  p.rdoc_pattern = /^(lib|bin|ext)|txt|rdoc|CHANGELOG|MIT-LICENSE$/
  rdoc_template = `allison --path`.strip << ".rb"
  p.rdoc_template = rdoc_template
  p.test_pattern = 'spec/**/*_spec.rb'
end