def make_snippet(string)
  if string.split.size <= 5
    return string
  else
    arr = string.split[0..4].join(" ") + "..."
  end
end