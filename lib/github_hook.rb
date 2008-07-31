require 'json'
require 'ostruct'

class GithubHook
  VERSION = '0.6.0'
  attr_reader :before, :after, :ref, :repository, :owner, :commits

  def initialize(json)
    payload = JSON.parse(json)
    @before, @after, @ref = payload["before"], payload["after"], payload["ref"]
    @repository = OpenStruct.new(payload["repository"])
    @owner = OpenStruct.new(payload["repository"]["owner"])
    @commits = payload['commits'].map do |hash|
      commit_ostruct = OpenStruct.new(hash)
      commit_ostruct.sha = hash["id"]
      commit_ostruct.author = OpenStruct.new(hash["author"])
      commit_ostruct
    end
  end
  
  # just the most recent commit
  def last_commit
    @commits.first
  end
  
end