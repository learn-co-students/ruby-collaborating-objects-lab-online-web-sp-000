require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

    def name=(name)
      @name = name
    end

    def artist=(artist)
      @artist = artist
    end

    def self.all
      @@all
    end

    def self.new_by_filename(file)

      filename = file.split(" - ")
      r = Song.new(filename[1])
      r.name = filename[1]
      r.artist_name = filename[0]
      r
# binding.pry
    end

    def artist_name=(artist_name)
    e = Artist.find_or_create_by_name(artist_name)
# binding.pry
        e.add_song(self)

  end
end
