require_relative "trebuchet"

file_contents = File.readlines("input.txt")
trebuchet = Trebuchet.new(file_contents)
puts trebuchet.sum
