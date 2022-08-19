class Music
  def initialize
    @list = []
  end

  def add(track) # track is a string
    fail "you already added this one" if @list.include?(track)
    @list << track
  end

  def list
    fail "you do not have a list" if @list.empty?
    @list
  end
end