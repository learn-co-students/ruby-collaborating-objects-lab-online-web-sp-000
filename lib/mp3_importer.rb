class MP3Importer
  attr_accessor :path
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    Dir.glob("#{@path}/*.mp3").collect {|file| File.basename(file)}
  end

  # def import
  #   self.files.each do |file|
  #     sections = file.split(" - ")
  #     sections[2]=sections[2].split(".mp3")[0]
  #     new = Song.new(sections[0])
  #     new.artist = Artist.find_or_create_artist(sections[1])
  #     new.genre = sections[2]
  #     binding.pry
  #   end
  #   Song
  # end
end