require "pry"
class MP3Importer
  attr_accessor :path, :files


  def initialize(path)
    @path=path
  end


  def files
    messy_files=Dir.glob("#{@path}/*.mp3")
    subst="./spec/fixtures/mp3s/"
    clean_files=[]
    messy_files.each do |messy_file|
      clean_files<<messy_file[subst.size..-1]
    end
    clean_files
  end

#binding.pry

  def import
    files.each do |file|
      info_array=file.split(" - ")
      Song.new_by_filename(info_array)
    end
  end

end
