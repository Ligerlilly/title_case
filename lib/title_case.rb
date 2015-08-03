class String
  define_method(:title_case) do
    words = self.split()
    count = 0
    old_word = ''
    words.each do |word|  # iterating through the words array
      count += 1
      if is_number?(old_word) && count == 2
        word.capitalize!
      end

      old_word = word

      if count == 1     # always capitalize 1st word
        word.capitalize!
      end

      unless word == "of" || word == "and" || word == "the"
        word.capitalize!()  # global exceptions
      end

    end
    words.join(" ")
  end

end

def is_number?(string)
  true if Integer(string) rescue false
end
