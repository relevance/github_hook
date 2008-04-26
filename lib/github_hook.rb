require 'json'
require 'ostruct'
require 'log_buddy'
require 'logger'
LogBuddy.init :logger => Logger.new(STDOUT)

class GithubHook
  VERSION = '1.0.0'
  attr_reader :before, :after, :ref, :repository, :owner, :commits

  def initialize(json)
    payload = JSON.parse(json)
    @before, @after, @ref = payload["before"], payload["after"], payload["ref"]
    @repository = OpenStruct.new(payload["repository"])
    @owner = OpenStruct.new(payload["repository"]["owner"])
    # d {payload["commits"].inspect}
    @commits = {}
    payload["commits"].each do |sha1, commit|
      commit = OpenStruct.new(commit)
      commit.author = OpenStruct.new(commit.author)
      commits[sha1] = commit
    end
  end
end