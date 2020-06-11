class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self

    end
    def name=(name)
        @name = name
    end
    def artist=(artist)
        @artist = artist
    end
    def self.all
        @@all
    end
    def self.new_by_filename(file)
        #binding.pry
        newFile = file.split(".mp3")[0].split(" - ")
        newSong = Song.new(newFile[1])
        newArtist = Artist.find_or_create_by_name(newFile[0])
        newSong.artist = newArtist
        newSong
    end
    def artist_name=(artist)
        newArtist = Artist.find_or_create_by_name(artist)
        newArtist.add_song(self)
    end
end