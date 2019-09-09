class Song

  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename = filename.delete('.mp3').strip
    normalized_filename = filename.split(/[ -.]/)
  end

end