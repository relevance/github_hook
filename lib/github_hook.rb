require 'rubygems'
require 'json'
require 'ostruct'

class GithubHook
  VERSION = '0.6.2'
  attr_reader :before, :after, :ref, :repository, :owner, :commits

  def initialize(json)
    payload = JSON.parse(json)
    @before, @after, @ref = payload["before"], payload["after"], payload["ref"]
    @repository = OpenStruct.new(payload["repository"])
    @repository.private = parse_private_flag(@repository.private)
    @owner = OpenStruct.new(payload["repository"]["owner"])
    @commits = create_commits(payload)
  end
  
  def parse_private_flag(private_flag)
    private_flag == "true" ? true : false
  end
  
  def create_commits(payload)
    payload['commits'].map do |hash|
      commit_ostruct = OpenStruct.new(hash)
      commit_ostruct.sha = hash["id"]
      commit_ostruct.author = OpenStruct.new(hash["author"])
      commit_ostruct
    end
  rescue NoMethodError
    payload['commits'].map do |sha, hash|
      commit_ostruct = OpenStruct.new(hash)
      commit_ostruct.sha = sha
      commit_ostruct.author = OpenStruct.new(hash["author"])
      commit_ostruct
    end
  end
  
  def last_commit
    @commits.sort_by { |commit| commit.timestamp }.last
  end
  
end