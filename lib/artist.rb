require "pry" 

class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  def save
    @@all << self 
    nil
  end 
  def self.all 
    @@all 
  end 
  def self.find_or_create_by_name(name)
    if self.all.any? { |artist| artist.name == name }
        self.all.find { |artist| artist.name == name }
    else 
      self.new(name).tap {|a| a.save}
    end 
  end 
  def print_songs 
    @songs.each do |s|
      puts s.name 
    end 
  end 
end 