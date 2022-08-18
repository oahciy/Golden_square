class GrammarStats
  def initialize
    @tracker = 0
    @good =0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    

    last_char = [".", "!", "?"].include? text[-1]
    first_char = text[0] == text[0].upcase

    @tracker += 1

    if first_char && last_char
      @good += 1
      true
    else
      false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed the check defined in the `check` method. The number 55 represents 55%.
    ((@good.to_f / @tracker.to_f) * 100).to_i
  end
end