def substrings(string, substrings)
  hash_listing = {}
  substrings.each do |substring|
    string.split(" ").each do |word|
      if word.downcase.include?(substring)
        if hash_listing.has_key?(substring)
          hash_listing[substring] += 1
        else
          hash_listing[substring] = 1
        end
      end
    end
  end
  hash_listing
end