class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path=path
    @files=Dir.entries(path).each_with_object([]) do |song, arr|
    arr<< song if song.include?("mp3")
  end
end

   def file
     @files.each{|file| puts file}
   end

   def import
     @files.each{ |filename| puts Song.new_by_filename(filename)}
  end

end
