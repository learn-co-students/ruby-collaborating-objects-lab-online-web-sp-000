#class MP3Importer
#
#    attr_accessor :path
#
#    def initialize(filepath)
#        @path = filepath
#    end
#
#    def files
#        @files = Dir.entries(path)
#        @files.delete_if {|file| file == "." || file == ".."}
#    end
#
#    def import
#
#    end
#end

class MP3Importer
    attr_reader :path
  
    def initialize(path)
      @path = path
    end
  
    def files
      @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end
  
    def import
      files.each{|f| Song.new_by_filename(f)}
    end
  end