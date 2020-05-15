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
      new_by_filename = Song.new(file)
      # new_by_filename.split(" - ")

    end

    def artist_name=(artist_name)
      artist.all.each do |e|
        if e.name == artist_name
          song.name = artist_name
        else
          song.Artist.new = artist_name
        end
      end
    end
  end
