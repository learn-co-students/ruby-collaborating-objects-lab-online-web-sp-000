#responsible for creating songs given each
#filename and sending the artist's name (a string) to the Artist class

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
      song = self.new(filename.split(" - ")[1])
      song.artist_name = filename.split(" - ")[0]
      song
    end

    def artist_name=(artist_name)
       self.artist = Artist.find_or_create_by_name(artist_name)
       self.artist.add_song(self)
    end

end#class end
