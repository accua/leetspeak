class String
  define_method(:leetspeak) do
    words = self.split(" ")
    new_sentence = []
      words.each() do |word|
        newwords = []
        total = 0
        letters = word.split("")
        letters.each() do |letter|
          total += 1
          if letter === "e"
            newwords.push(3)
          elsif letter === "s" && total === 1
            newwords.push(letter)
          elsif letter === "o"
            newwords.push(0)
          elsif letter === "I"
            newwords.push(1)
          elsif letter === "s"
            newwords.push("z")
          else
            newwords.push(letter)
          end
        end
        newwords = newwords.join()
        new_sentence.push(newwords)
      end
      new_sentence.join(" ")
  end
end
