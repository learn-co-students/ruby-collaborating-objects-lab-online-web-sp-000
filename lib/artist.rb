class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def self.find(name)
        self.all.find {|n| n.name == name}
    end

    def self.create(name)
        self.new(name) {|a| a.save}
    end

    def self.find_or_create_by_name(name)
        self.find(name) || self.create(name)
    end

    def print_songs
        songs.each {|song| puts song.name}
    end

end