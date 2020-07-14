class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path=path
  end

  def files
    #find the directory
    #read from it and push all four documents into an array called files

    @files=Dir.new(@path).grep(/.*\.mp3/)
  end

def import
  self.files.each do |file|
    #info_array[1]=artist
    #info_array[2]=name
    #info_array[3]=genre
    Song.new_by_filename(file)
    end
end

end
