$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'minitest/autorun'
require 'lib/latency_check/request'
require 'net/http'

class MockHttp
  def get_response(x)
    sleep(10)
    nil
  end
end

class RequestTest < MiniTest::Unit::TestCase
  def setup
    # @request = Request.new(MockHttp.new)
    @request = Request.new(Net::HTTP)
  end

  def test_measure
    res = @request.measure("https://gitlab.com")
    assert(res >=  1)
  end
end
