class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def artist_name
        if self.artist == nil
            return nil
        else
            self.artist.name
        end
    end

    def self.new_by_filename(some_filename)
        n = Song.new(some_filename.split(/\ \-\ /)[1])
        n.artist_name
        n
    end
end
