require "pry"
class Song
    attr_accessor :name, :artist

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

    def self.new_by_filename(file)
        song = file.split(/[\.-]/)
        song1 = Song.new(song[1].strip)
        song1.artist_name = song[0].strip
        song1
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

end
