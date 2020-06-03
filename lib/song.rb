class Song
attr_accessor :name, :artist
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def self.new_by_filename(filename)
    new_name = filename.split(" - ")[1]
    @new_artist = filename.split(" - ")[0]
    new_song = self.new(new_name)
    new_song.artist = Artist.new(@new_artist)
    return new_song
end

def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
end

end
