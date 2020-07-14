class Artist

    attr_accessor :name, :artist, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end
    
    def add_song(song)
        @songs << song
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end

    def self.create_by_name(name)
        artist = self.new(name)
        artist.save
        artist
    end

    def self.find_by_name(name)
        @@all.find{|artist| artist.name == name}
    end

    def self.find_or_create_by_name(name)
        if self.find_by_name(name) != nil
            self.find_by_name(name)
        else
            self.create_by_name(name)
        end
    end

    def print_songs
        @songs.each do |mysong|
           puts mysong.name
        end
    end

end
