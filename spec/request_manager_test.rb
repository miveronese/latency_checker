$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'minitest/autorun'
require 'lib/latency_check/request_manager'
require 'lib/latency_check/request'


class RequestManagerTest < MiniTest::Unit::TestCase

  def setup
    @manager = RequestManager.new(4, "http://google.com", 2) { |x| 1 }
  end

  def test_several_requests
    assert_equal([1, 1], @manager.response_times)
  end
end
