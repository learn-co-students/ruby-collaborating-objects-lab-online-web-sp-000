class Song

attr_accessor :name, :artist

def initialize(name)
@name = name
@artist = artist
end



def self.new_by_filename(filename)
artist, song = filename.split(" - ")
new_song = self.new(song)
new_song.artist = Artist.find_or_create_by_name(artist)
new_song
end




def self.artist_name=(name)
self.artist = Artist.find_or_create_by_name(name)
end



end
