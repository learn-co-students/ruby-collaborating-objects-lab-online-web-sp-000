class Song

  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
      @name = name
      save
    end

    def name=(name)
      @name = name
    end

    def artist=(artist)
      @artist = artist
    end

    def artist_name
      self.artist.name
    end


    def songs
      Song.all.select {|song| song.artist == self}
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def artist_name=(name)

      if (self.artist.nil?)
        self.artist = Artist.new(name)
      else
        self.artist.name = name
      end
    end

    def self.new_by_filename(filename)
      artist_name, song_name, extra = filename.split(" - ")
      song = self.new(song_name)
      artist = Artist.find_or_create_by_name(artist_name)
      artist.add_song(song)
    end

    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
    #after the artist instance is returned
    #this method calls the artist instance method #add_song
    #add_song adds this current song instance to the artist's song list
      self.artist.add_song(self)
  end
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end
    # def self.new_by_filename(filename)
    #   artist_name = filename.split(" - ")[0]
    #   song_name = filename.split(" - ")[1]
    #   song = self.new(song_name)
    #   artist = Artist.find_or_create_by_name(artist_name)
    #   artist.add_song(song)
    # end
end
