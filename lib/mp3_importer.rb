class MP3Importer 

    attr_accessor :path

    @@all = []

    def initialize(path)
        @path = path 
        @@all << self
    end 

    def self.all 
        @@all
    end 
    
    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end

    def import
        files.each{|f| Song.new_by_filename(f)}
    end 
end