def printer_error(str)
  # define valid characters
	valid_chars = ('a'..'m').to_a

  # filter out all valid characters from string
  invalid_chars = str.chars.reject { |ch| valid_chars.include?(ch) }

  # return the number of invalid characters over the total length
  p "#{invalid_chars.count}/#{str.length}"
end
