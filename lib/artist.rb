
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
       if artist = @@all.find { |artist| artist.name == name}
            artist
        else
            Artist.new(name)
        end
    end

    def print_songs
        @songs.each {|song| puts song.name}
    end



end