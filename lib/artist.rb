class Artist
  attr_accessor :name, :songs, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    # song.artist = self
  end

  def save
    @@all << self
  end

   def self.all
     @@all
   end


  #  def self.create_by_name(name)     Try to squeeze all these steps into the #find_or_create_by_name
  #    song = self.new
  #    song.save
  #    song.name = name
  #    song
  #  end
   #
  #  def self.find_by_name(name)
  #    self.all.find {|song| song.name == name}
  #  end

   def self.find_or_create_by_name(name)
     if song = self.find_by_name(name)
       song
     else
       self.create_by_name(name)
     end
   end



end
