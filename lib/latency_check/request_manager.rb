$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'net/http'
require 'lib/latency_check/request'

class RequestManager

  def initialize(max_time, url, sleep_time, &block)
    @max_time = max_time.to_i
    @url = url
    @request_builder = block
    @sleep_time = sleep_time.to_i
  end

  def status
    res =  Net::HTTP.get_response(URI(@url))
    {"code"=> res.code, "message" => res.message}
  end

  # It returns an array with the response times of n requests (sleep_time) made during x seconds (max_time) 
  def response_times
    times = []
    start_time = Time.now
    final_time = Time.now + @max_time
    counter = 1
    while Time.now < final_time do
      times << @request_builder.call(@url, counter)
      sleep(@sleep_time)
      counter += 1
    end
  end
end
