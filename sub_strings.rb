DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
  string_to_arr = string.downcase.split

  matches_of_str = string_to_arr.map do |string|
    array.map { |sub_str| sub_str if string.include?(sub_str) }.compact
  end.flatten

  hash_of_matches = matches_of_str.reduce(Hash.new(0)) do |result, match|
    result[match] += 1
    result
  end

  puts hash_of_matches
end


substrings("below", DICTIONARY)

substrings("Howdy partner, sit down! How's it going?", DICTIONARY)
