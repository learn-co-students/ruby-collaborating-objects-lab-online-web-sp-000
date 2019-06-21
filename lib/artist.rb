require "pry"
class Artist
  attr_accessor :name, :songs, :all
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def name
    @name
  end
  
  def songs
    @songs 
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end

  
  def self.find_or_create_by_name(d_name)
    if self.all.find{|person| person.name == d_name}
      name
    else
      name = self.new(d_name)
      name
    end
  end
  
  def print_songs
    self.all.each do |person| 
      puts "#{person.name}"
    end
  end
    
end