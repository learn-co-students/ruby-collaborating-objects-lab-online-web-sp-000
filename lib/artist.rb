class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name(name)
        artist_exists =
        @@all.select do |artist|
            artist.name == name
        end
        if artist_exists.size == 1
            artist_exists[0]
        else
            Artist.new(name)
        end

        # end {|artist| artist.name == name}
        # if artist_exists[0]
            # artist_exists[0]
        # else
            # new_artist = Artist.new(name)
        # end

        # if @@all.each artist.name)
            # name
        # else
            # new_artist = Artist.new(name)
        # end
    end

    def print_songs
        @songs.each {|song| puts song.name}
    end
end