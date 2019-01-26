class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize (name)
    @songs = []
    @name = name
  end
  def add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    result = @@all.find {|obj| obj.name == name}
    if (result != nil)
      return result
    else
      new_artist = Artist.new(name)
      new_artist.save
      return new_artist
    end
  end
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
