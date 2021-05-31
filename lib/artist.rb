class Artist
    #create artist or finding the artist
    attr_accessor :name, :song

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist= self
    end

    def self.create_by_name(name)
        Artist.new(name)
    end

    def self.find_by_name(name)
        self.all.find {|artist| artist.name == name}
    end

    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.create_by_name(name)
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end
end