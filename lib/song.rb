class Song

    attr_accessor :name, :artist
 
    def initialize(name)
        @name = name
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
    
    def self.new_by_filename(some_filename)
        n = self.new(some_filename.split(/\ \-\ /)[1])
        n.artist_name = some_filename.split(/\ \-\ /)[0]
        n
    end
end
