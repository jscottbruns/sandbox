def autocomplete(input, dictionary)
  input.gsub!(/[^a-z]/i, '')
  dictionary.select{|entry| entry.downcase.gsub(/[^a-z]/, '').slice(0, input.length) == input.downcase}.first(5)
end