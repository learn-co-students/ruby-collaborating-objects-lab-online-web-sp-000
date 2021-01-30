class MP3Importer

  attr_accessor :path, :file_array

 def initialize(path)
   @path = path
 end

 def files
   @file_array = Dir.entries(path).select{|file| file.include?(".mp3")}
 end

 def import
   self.files
   @file_array.each { |filename| Song.new_by_filename(filename)}
 end

end
