require 'find'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = Dir.glob("#{filepath}").join
    # @path = Dir.entries("filepath")
  end

  def files
    Dir.children(@path)
  end

  def import

    self.files.each do |file|
      file.new_by_filename

    end
  end
end
