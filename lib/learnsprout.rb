module LearnSprout def self.endpoint=(endpoint)
    @@endpoint = endpoint
  end

  def self.endpoint
    @@endpoint
  end

  def self.user_agent=(user_agent)
    @@user_agent = user_agent
  end

  def self.user_agent
    @@user_agent
  end

  def self.debugging?
    !!@@debug
  end

  def self.debug=(debug)
    @@debug = debug
  end

  self.debug = false
  self.user_agent = "LearnSprout Ruby Wrapper"
  self.endpoint = "https://beta.api.learnsprout.com/"
end

require 'faraday'
require 'multi_json'

require "learnsprout/exceptions"
require "learnsprout/response/parse_json"
require "learnsprout/response/follow_redirects"
require "learnsprout/connection"
require "learnsprout/client"
require "learnsprout/org"
require "learnsprout/school"
require "learnsprout/student"
require "learnsprout/section"
require "learnsprout/teacher"
require "learnsprout/term"
require "learnsprout/course"
require "learnsprout/nces"
require "learnsprout/phone"
require "learnsprout/address"
require "learnsprout/version"
