require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.keep_if{|x| x.include?(".mp3")}
    @files = files
  end

  def import
    files
    #editedfiles = @files
    #newfile = @files[0].gsub(/ - [a-z](.*)/, "")
    #newfile = newfile.gsub(/^(.*)- /, "")
    @files.each do |x|
       rename1 = x.gsub(/ - [a-z](.*)/, "")
       rename2 = rename1.gsub(/^(.*)- /, "")
       Song.new_by_filename(rename2)
    end
  end

end
