class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        store
    end

    def Artist.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def Artist.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : self.new(name)
    end

    def self.find(name)
        self.all.find{|artist| artist.name == name}
    end

    def store
        @@all << self
    end

    def print songs
        self.each.do{|song| puts song.name}
    end
end
