class Artist
  attr_accessor :name, :artist, :songs
  @@all = []
  def initialize(name)
    @name = name
     artist = self
     artist.name = name
     @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
  Song.all.select {|song| song.artist == self}
  end
   def self.find_or_create_by_name(names)
     artists = ""
     if @@all == []
             Artist.new(names)
            #  @@all
          else  @@all.map{ |artist| if artist.name == names
                    artists = artist
              else
                   self.new(names)
                   artists = artist
              end }
              artists
          end
    end
    def print_songs
      puts songs.map{|song|song.name}
    end

end
