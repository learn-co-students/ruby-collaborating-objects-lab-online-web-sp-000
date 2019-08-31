# class MP3Importer
#   attr_accessor :path, :file_array
#
#   def initialize(filepath)
#     @path = filepath
#   end
#
#   def files
#     @file_array = Dir.entries(@path).select{|file| file.include?(".mp3")}
#   end
#
#   def import
#     self.files
#     @file_array.each{|song| Song.new_by_filename(song)}
#   end
# end

class MP3Importer

  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end
