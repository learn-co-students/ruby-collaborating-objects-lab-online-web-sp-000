class Song
attr_accessor :name, :new_by_filename, :artist

  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split("-")
    song_name = split_name[1].strip
    artist_name = split_name[0].strip


    new_song = Song.new(song_name)
    @@all << new_song
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    Artist.find_or_create_by_name(artist_name).add_song(new_song)

    # new_Song.name = sog
    # puts new_Song.name
    new_song
  end


end # of class
