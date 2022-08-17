def grammar(text)
  fail "No text given" if text.empty?
  last_char = [".", "!", "?"].include? text[-1]
  first_char = text[0] == text[0].upcase
  if first_char && last_char
    return "Nice grammar!"
  elsif !first_char && last_char
    return "You need to start with a capital letter."
  elsif first_char && !last_char
    return "You need to end with a punctuation mark."
  else
    return "You need to improve your grammar."
  end
end