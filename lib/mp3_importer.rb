class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #solution : Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    files = Dir["#{path}/*.mp3"]
    filename_array = []
    files.each do |i_file|
      filename_array << i_file.split("/")[-1]
    end
    filename_array
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
# learn spec/mp3_importer_spec.rb
