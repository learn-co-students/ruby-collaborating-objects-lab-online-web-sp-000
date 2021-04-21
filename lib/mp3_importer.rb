require 'pry'
class MP3Importer
    attr_accessor :path
    def initialize(filepath)
        @path = filepath
    end

    def files
        @files = Dir["#{@path}/*.mp3"].map{|file| file.gsub("#{@path}/","")}
    end


    def import
        self.files.each {|filename| Song.new_by_filename(filename)}
    end
end