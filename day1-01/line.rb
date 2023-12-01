class Line
  def initialize(line)
    @line = line
  end

  def numbers
    @line.chars.filter do |char|
      char.to_i.to_s == char
    end
  end

  def first_number
    numbers.first.to_i if numbers.any?
  end

  def last_number
    numbers.last.to_i if numbers.any?
  end

  def calibration_value
    return nil if numbers.empty?
    [first_number, last_number].compact.join.to_i
  end
end
