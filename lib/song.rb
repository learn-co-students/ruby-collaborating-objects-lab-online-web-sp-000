class Song
    #create songs given each filename and sending the artist name to Artist
    #relies on Artist
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

    def self.new_by_filename(filename)
        artist_song = filename.split(" - ")
        song = self.new(artist_song)[1]
        artist = Artist.find_or_create_by_name(artist_song[0])
        song.artist = artist
        artist.add_song(song)
        song
    end

end