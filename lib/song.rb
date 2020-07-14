class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(fn)
    artist, name, genre = File.basename(fn, '.*').split(' - ')
    s = self.new name
    s.genre = genre
    Artist.find_or_create_by_name(artist).add_song s
    s
  end
end