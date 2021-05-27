
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
        song_artist = filename.split(" - ")[0]
        song_name = filename.split(" - ")[1]
        new_song = Song.new(song_name)
        new_song.artist = Artist.find_or_create_by_name(song_artist)
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
    

end