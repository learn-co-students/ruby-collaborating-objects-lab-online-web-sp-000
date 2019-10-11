require 'pry'

class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @song = []
    save
  end

  def save
    @@all << self
  end
  
  # def self.create(name)     
  #   self.new(name).tap {|artist| artist.save}   
  # end
  
    def create(name)
    new_instance = Artist.new(name)
    new_instance.save
    new_instance
    end
  
  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @song << song

  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)  
    end
  end
 
  def self.find(name)
    self.all.select {|artist| artist.name == self.name}
end

  def print_songs
    songs.each {|song| puts song.name}
  end
end