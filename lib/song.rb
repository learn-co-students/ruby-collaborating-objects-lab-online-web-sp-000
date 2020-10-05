class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_name = filename.split(" - ")[1]
        artist = filename.split(" - ")[0]
        new_song = self.new(song_name)
        new_song.artist = Artist.new(artist)
        new_song
    end


    def artist_name=(artist)
        @artist = Artist.find_or_create_by_name(artist)
    end

end