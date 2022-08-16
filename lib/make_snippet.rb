def make_snippet(string)
  if string.split.size <= 5
    return string
  else
    arr = string.split
    arr2 = arr[0..4]
    result = arr2.join(" ") + "..."
  end
  return result
end