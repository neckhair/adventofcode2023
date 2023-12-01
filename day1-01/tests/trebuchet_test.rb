require "minitest/autorun"
require_relative "../trebuchet"

class TrebuchetTest < Minitest::Test
  def test_sum
    input = "1abc2\npqr3stu8vwx\na1b2c3d4e5f\ntreb7uchet"
    tr = Trebuchet.new(input)
    assert_equal 142, tr.sum
  end
end
