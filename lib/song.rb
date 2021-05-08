class Song

    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        files_array = file.split(" - ")
        song = Song.new(files_array[1])
        artist = Artist.find_or_create_by_name(files_array[0])
        artist.add_song(song)
        song
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name=(artist)
        self.artist = Artist.find_or_create_by_name(artist)
    end

end