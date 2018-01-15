#Exercise 25: Even More Practice

module Ex25

  #this function will break up words for us.
  def Ex25.break_words(stuff)
    words = stuff.split(" ")
    return words
  end

  #Sorts the words
  def Ex25.sort_words(words)
    return words.sort
  end

  #prints the first word after shifting it off
  def Ex25.print_first_word(words)
    first_word = words.shift
    puts first_word
  end

  #Prints the last word after popping it off
  def Ex25.print_last_word(words)
    last_word = words.pop
    puts last_word
  end

  #Takes in a full sentence and returns the sorted words
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  #prints the first and last words of the sentence
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  #Sorts the words then prints the first and last one
  def Ex25.print_first_last_sorted(sentence)
    words_sorted = sentence.split(" ").sort
    Ex25.print_first_word(words_sorted)
    Ex25.print_last_word(words_sorted)
  end
end
