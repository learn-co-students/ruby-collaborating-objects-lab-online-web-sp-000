class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir["./spec/fixtures/mp3s/*"].map { |file| file.split("/").last }
  end

  def import
    self.files.each do |file|
      # parsed = file.split(" - ")
      # artist = parsed[0]
      # title = parsed[1]
      # genre = parsed[2].split(".")[0]
      # file_type = parsed[2].split(".")[1]
      Song.new_by_filename(file)
    end
  end
end 
