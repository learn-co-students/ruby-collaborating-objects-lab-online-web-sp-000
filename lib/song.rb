#class Song
#
#    attr_accessor :name, :artist
#
#    @@all = []
#
#    def initialize(name)
#        @name = name
#        save
#    end
#
#    def save
#        @@all << self
#    end
#
#    def self.new_by_filename(filename)
#        song = filename.split(" - ")
#        new_song = self.new(song[1])
#        artist = Artist.find_or_create_by_name(song[0])
#        song.artist = artist
#        artist.add_song(new_song)
#        new_song
#    end
#end

class Song
    attr_accessor :name, :artist
    @@all = []
  
    def initialize(name)
      @name = name
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.new_by_filename(filename)
      artist, song = filename.split(" - ")
      new_song = self.new(song)
      new_song.artist_name = artist
      new_song
    end
  
    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end
  end