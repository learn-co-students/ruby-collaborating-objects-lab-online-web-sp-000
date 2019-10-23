class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return nil if @artist.nil?
    @artist.name
  end
  
  # def artist_name=(name)
  #   found = Artist.all.select { |artist| artist.name == name }
  #   if found.nil?
  #     new = Artist.new(name)
  #     @artist = new
  #     return new
  #   end
  #   found
  # end

end