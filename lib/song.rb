


class Song
  @@all = []
  attr_accessor :name, :artist

  #songs have titles...
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end


#the new stuff


#note filename is a passed in predefined string
#
    def self.new_by_filename(filename)
      name = filename.split(" - ")[1]
      artist = filename.split(" - ")[0]
      new_song = self.new(name)
      new_song.artist_name = artist
      new_song
    end


#additional setter to use to make sure that the song doesnt forget to alert the
#the artist that its got a new song
    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    leend

end
