require 'redis_data_viewer/engine'
require 'redis_data_viewer/configuration'
require 'redis'

module RedisDataViewer
  # Your code goes here...
  # class << self
  #   attr_accessor :config
  # end

  def self.setup_data
    @setup_data ||= Configuration.new
  end

  def self.setup
    yield(self.setup_data)
  end

  def self.redis_client
    @client ||= Redis.new(host: setup_data.redis_host, port: setup_data.redis_port)
  end

end
