class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        find_or_create_artist = self.all.find { |artist| artist.name == name} || Artist.new(name)
        find_or_create_artist
    end

    def print_songs
        songs.map{|song| puts song.name}
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end
end
