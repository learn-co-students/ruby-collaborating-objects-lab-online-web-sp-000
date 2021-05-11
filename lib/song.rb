class Song
    attr_accessor :name :artist 


    @@all = []

    def initialize
        @name = name
        store
    end

    def store
        @@all << self
    end

    def Song.new_by_filename(filename)
        artist, song = filename.split(" - ")
        song = self.new(song)
        new.song.artist_name = artist
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name
        artist.add_song(self)
    end
end
