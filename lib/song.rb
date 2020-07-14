require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    a = filename.split(/-|[.]/)
    s = Song.new("#{a[1].strip}")
    s.artist = Artist.new(a[0].strip)
    s.artist.songs << s
    return s
  end
end
