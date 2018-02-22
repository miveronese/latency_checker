$:.unshift File.expand_path(File.dirname(__FILE__) + '/..')

require 'minitest/autorun'
require 'lib/latency_check/param_parser'

class ParamParserTest < MiniTest::Unit::TestCase
  def setup
    @parser = ParamParser.new()
  end

  def test_parse
    res = @parser.parse(["--url", "https://gitlab.com", "--seconds-interval", "10", "--max-time-seconds", "60"])

    assert_equal(res["seconds-interval"], "10")
    assert_equal(res["max-time-seconds"], "60")
    assert_equal(res["url"], "https://gitlab.com")
  end
end
