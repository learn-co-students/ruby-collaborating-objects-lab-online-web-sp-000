class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self

  end

  def add_song(song)
    song.artist = self
    @songs << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(new_name)

    found_flag = false

    artist_found_or_created = Artist.all[0]

    Artist.all.each do |artist_info|
      if artist_info.name == new_name
        artist_found_or_created = artist_info
        found_flag = true
      end
    end

    if found_flag == false
      artist_found_or_created = Artist.new(new_name)
    end
    artist_found_or_created
    #print "yup", artist_found_or_created.name
  end



  def print_songs

    Song.all.each do |song|
      if song.artist == self
        print song.name,"\n"
      end
    end
  end
end
