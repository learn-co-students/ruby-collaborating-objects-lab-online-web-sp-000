
class Artist

    attr_accessor :name
   
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
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

    def self.find_by_name(name)
        @@all.find do |artist|
            artist.name == name
        end
    end

    def self.find_or_create_by_name(name)
        if artist = self.find_by_name(name)
            artist
        else
            Artist.new(name)
        end
    end

    def print_songs
        @songs.each do |song|
           puts song.name
        end
    end

end