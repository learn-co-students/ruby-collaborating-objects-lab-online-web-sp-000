class Song

    attr_accessor :name, :artist
    attr_reader :artist_name

    @@all = []

    def initialize(name) 
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def self.new_by_filename(file)
        arr = file.split('.mp3')[0].split(' - ')
        artist = arr[0] 
        name = arr[1]
        genre = arr[2]
        song = Song.new(name)
        song.artist = Artist.find_or_create_by_name(artist)
        song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end 



end 