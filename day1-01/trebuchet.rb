require_relative "line"

class Trebuchet
  def initialize(input)
    @input = input
  end

  def lines
    @lines ||= @input.map { |line| Line.new(line.chomp) }
  end

  def sum
    lines.sum(&:calibration_value)
  end
end
