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

    artist = Artist.find_or_create_by_name(name)

    self.artist = artist

end


def self.new_by_filename(file)

    row = file
        data = row.split(" - ")
          artist_name = data[0]
          song_name = data[1].delete_suffix(".mp3").strip
          song = Song.new(song_name)
          song.artist_name = artist_name
          song
    end



    def artist= (artist)
        @artist = artist
          artist.songs << self
    end
end
