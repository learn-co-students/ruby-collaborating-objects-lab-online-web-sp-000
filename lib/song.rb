# Need to relate Song, with MP3 player and Artist

class Song
    attr_accessor :name, :artist
    
    def initialize (name)
        @name = name
    end

    def self.new_by_filename(path)
       title= path.split(" - ")[1]
       artistName = path.split(" -")[0]
       song = self.new(title)
       song.artist= Artist.find_or_create_by_name(artistName) 
       song.artist.add_song(song)     
       song
    end
end
