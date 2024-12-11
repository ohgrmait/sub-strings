def substrings(string, substrings)
  substrings.reduce(Hash.new(0)) do |hash, substring|
    string.split(" ").each do |word|
      if word.downcase.include?(substring)
        if hash.has_key?(substring)
          hash[substring] += 1
        else
          hash[substring] = 1
        end
      end
    end
    hash
  end
end