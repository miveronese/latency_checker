$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'net/http'
require 'lib/latency_check/request'

class Request
  
  def initialize(http_client = Net::HTTP)
    @http_client = http_client
  end

  # It gives the response time of a single request in miliseconds
  def measure(url)
    uri = URI(url)
    starting_time = Time.now
    res = @http_client.get_response(uri)
    ending_time = Time.now
    (ending_time - starting_time) * 1000
  end
end

