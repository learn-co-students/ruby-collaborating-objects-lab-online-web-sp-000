class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file)
    fpart = file.partition('-')
    
    file_artist = fpart[0].strip
    file_name = fpart[2].partition('-')
    
    
    s = self.new(file_name[0].strip)
    
    s.artist = Artist.find_or_create_by_name(file_artist)
    
    return s
    
    
    
    #puts "#{file_artist.strip} --- #{file_name[0].strip}"
    
  end
  
  def artist_name=(name)
    
    find_name = Artist.all.find { |check| check.name == name }
    
    if find_name.nil?
      @artist = Artist.new(name)
    else
      @artist = find_name
    end
  end
end