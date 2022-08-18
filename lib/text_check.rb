def text_check(text)
  fail "no text is given!" if text.nil?
  text.include?("#TODO")
end