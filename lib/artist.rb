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

    def self.find_or_create_by_name(name)
        matched_name = @@all.find {|artist| artist.name == name}
        if matched_name
            matched_name
        else
            self.new(name)
        end
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

end