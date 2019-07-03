class MP3Importer 
  attr_accessor :path
  
  def initialize(route)
    @path = route
  end
  
  def path
  @path
  end
  
  def files
    Dir[@path]
  end
  
  def import 
    
  end
  
  
end