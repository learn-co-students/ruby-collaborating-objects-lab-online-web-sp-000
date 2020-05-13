class Song
    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.new_by_filename(name)
        parsed_filename = name.split(" - ")
        parsed_artist = parsed_filename[0]
        parsed_song = parsed_filename[1]
        parsed_genre = parsed_filename[2]

        new_song = self.new(parsed_song)
        new_artist = Artist.find_or_create_by_name(parsed_artist)
        new_artist.add_song(new_song)
    end

    def artist_name=(name)
        new_artist = Artist.find_or_create_by_name(name)
        new_artist.add_song(self)
    end
end