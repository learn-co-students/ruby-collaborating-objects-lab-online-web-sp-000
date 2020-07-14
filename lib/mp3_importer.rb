class MP3Importer
attr_accessor :path

def initialize(path)
   @path = path
end

def files
  @files = []
   Dir.new(@path).each do |file|
     @files << file if file.length > 4
   end
   @files
end

def import
  self.files.each do |file|
    Song.new_by_filename(file)
end
end

end
