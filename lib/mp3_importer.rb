class MP3Importer

    attr_accessor :files, :file_path

    
    def initialize(file_path)
        @files = []
    end

    def files
        @files = Dir.entries(file_path)
        
    end
end