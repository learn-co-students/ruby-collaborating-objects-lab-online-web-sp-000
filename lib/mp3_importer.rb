require 'pry'
class MP3Importer
    attr_accessor :path, :size, :files
    @files = []
    def initialize(path)
        @path = path
       
    end
    def files
        
        @files = Dir[@path + "/*"]
        @files = @files.map {|file| file.delete_prefix("./spec/fixtures/mp3s/")}
        #binding.pry
        @files

    end
    def import
        #binding.pry
        self.files.each do |file| 
            if file == nil
            else
                Song.new_by_filename(file)
            end
            
        end
        
    end
end