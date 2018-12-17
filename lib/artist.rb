class Artist
 attr_reader :name
 @@all = []
 def initialize(name)
   @name = name
   @songs = []
 end
 def name=(name)
   @name = name
 end

 def add_song(song)
   self.songs << song
 end

 def songs
   @songs
 end

 def save
   @@all << self
 end

 def self.all
   @@all
 end

 def self.find_or_create_by_name(name)
   @@all.each do |artist|
     if artist.name == name
        return artist
     end
   end
     return self.new(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
