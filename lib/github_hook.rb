require 'json'
require 'ostruct'

class GithubHook
  VERSION = '0.5.0'
  attr_reader :before, :after, :ref, :repository, :owner, :commits

  def initialize(json)
    payload = JSON.parse(json)
    @before, @after, @ref = payload["before"], payload["after"], payload["ref"]
    @repository = OpenStruct.new(payload["repository"])
    @owner = OpenStruct.new(payload["repository"]["owner"])
    @commits = {}
    payload["commits"].each do |sha1, commit|
      commit = OpenStruct.new(commit)
      commit.author = OpenStruct.new(commit.author)
      commits[sha1] = commit
    end
  end
end