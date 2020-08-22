class Song

    @@all = []

    attr_accessor :artist, :name

    def initialize(name)

        @name = name

        @@all << self

    end


def self.all
@@all
end


def artist_name=(name)

    artisst = Artist.find_or_create_by_name(name)

    self.artist = artist

end

    def artist= (artist)
        @artist = artist
          artist.songs << self
    end
end
