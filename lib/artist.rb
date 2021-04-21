class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    @@all = []

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        artist_i = @@all.detect{|artist| artist.name == name}
        artist_i ? artist_i : Artist.new(name) 
    end

    def print_songs
        artist_songs = Song.all.select {|song| song.artist == self}
        artist_songs.each {|song| puts song.name}
    end
end