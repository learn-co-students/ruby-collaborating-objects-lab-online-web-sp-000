class Artist
    @@all = []

    attr_accessor :name, :song

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_song(song)
        song.artist = self
    end

    def songs
        show_songs = []
        Song.all.each do |song|
            if (song.artist == self)
                show_songs.push(song)
            end
        end        
        show_songs
    end

    def self.find_or_create_by_name(name)
        self.all.detect {|artist| artist.name == name} || Artist.new(name)
    end

    def print_songs
        Song.all.each do |song|
            if (song.artist == self)
                puts song.name
            end
        end    
    end
end

