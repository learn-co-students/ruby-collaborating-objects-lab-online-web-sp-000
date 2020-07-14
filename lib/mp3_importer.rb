require 'pry'

class MP3Importer
    attr_accessor :path, :files

    def initialize(path)
        @path = path
        @files = files
    end

    def files
        Dir.entries(path).select { |file| file.include?('mp3') }
    end

    def import
        Dir.entries(path).select do |file|  
            if file.include?('mp3') 
                Song.new_by_filename(@path)
            end
        end
     end

 end