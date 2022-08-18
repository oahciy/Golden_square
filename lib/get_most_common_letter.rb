def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub!(/[!@#$%^&*()-=_+|;':",.<>?' ]/, '')
  text.downcase.chars.each do |char|
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")
p get_most_common_letter("get groceries!")
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"