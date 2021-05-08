class MP3Importer

    attr_accessor :path

    def initialize(file_to_parse)
        @path = file_to_parse
    end

    def files
       files = Dir["#{@path}/*"]
       files.each do |filepath|
         filepath.sub!("./spec/fixtures/mp3s/","")
       end
    end

    def import
        files.each {|file| Song.new_by_filename(file)}
    end

end

# test_music_path = "./spec/fixtures/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# print music_importer.files