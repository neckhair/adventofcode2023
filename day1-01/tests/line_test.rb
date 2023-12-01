require "minitest/autorun"
require_relative "../line"

class LineTest < Minitest::Test
  def test_first_number
    [{line: "1abc2", number: 1}, {line: "pqr3stu8vwx", number: 3}, {line: "a1b2c3d4e5f", number: 1}, {line: "treb7uchet", number: 7}].each do |pair|
      line = Line.new(pair[:line])
      assert_equal pair[:number], line.first_number
    end
  end

  def test_last_number
    [{line: "1abc2", number: 2}, {line: "pqr3stu8vwx", number: 8}, {line: "a1b2c3d4e5f", number: 5}, {line: "treb7uchet", number: 7}].each do |pair|
      line = Line.new(pair[:line])
      assert_equal pair[:number], line.last_number
    end
  end

  def test_calibration_value
    [{line: "1abc2", value: 12}, {line: "pqr3stu8vwx", value: 38}, {line: "a1b2c3d4e5f", value: 15}, {line: "treb7uchet", value: 77}].each do |pair|
      line = Line.new(pair[:line])
      assert_equal pair[:value], line.calibration_value
    end
  end
end
