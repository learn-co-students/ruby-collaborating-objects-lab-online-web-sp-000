require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path

  end

  def files
    file_array = []
    Dir.foreach(@path) do |name|
      if name.match(/\w+\.mp3/)
        file_array << name
      end
    end
    file_array
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end






















 # require 'find'
#
# class MP3Importer
#   attr_accessor :path
#
#   def initialize(filepath)
#     @path = Dir.glob("#{filepath}").join
#     # @path = Dir.entries("filepath")
#   end
#
#   def files
#     Dir.children(@path)
#   end
#
#   def import
#     self.files.each do |file|
#       Song.new_by_filename(file)
#     end
#   end
# end
