class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

=begin
    def artist_name
        if self.artist == nil
            return nil
        else
            self.artist.name
        end
    end
=end
 
    def self.new_by_filename(some_filename)
        n = Song.new(some_filename.split(/\ \-\ /)[1])
        n.artist = some_filename.split(/\ \-\ /)[0])
        n
    end
end
