
require 'pry'

class MP3Importer
  attr_accessor :path, :files

def initialize(path)
  #path is a folder
  #you're supposed to go to the folder and see the files and import the filenames
  @path = path
  files()
end


  def files
    #filenamesarray = Dir.entries(@path) #==>this pick up things like "." and ".."
    filepathsarray = Dir.glob("#{@path}/*.mp3")
    mp3strings = []
    filepathsarray.each do | filepath |
      chunks = filepath.split("/")
      mp3strings << chunks.last
    end
    #binding.pry
    @myfiles = mp3strings
    #you can only add your files once per instance, by giving it the folder path
    #if @myfiles were @files does instance.files refers to the variable or the method?
    #i think the method. because the @files is not public. it's not exposed for getting or setting
  end

  def import
    #apparently u must set the initialize method to call the files. otherwise nothing to import. @myfiles would be nil
    @myfiles.each do | filename |
      Song.new_by_filename(filename)
    end
  end


end
