require "pry"
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    tempfiles = Dir["#{path}/*.mp3"]
    @files = tempfiles.collect{|n| n.slice(n.rindex("/") + 1, n.size)}
  end

  def import
    collection = @files.collect{|n| n.match(/\w*.*(?=[.])/)}
    collection.each do |i|
      songname = MP3Importer.get_info(i.to_s, "songname")
      artist = MP3Importer.get_info(i.to_s, "artist")
      genre = MP3Importer.get_info(i.to_s, "genre")
    end
    binding.pry

  end

  def self.get_info(info, infotype)
    collection = info.split(" - ")
    case infotype
      when "artist"
        return collection[0].to_s
      when "songname"
        return collection[1].to_s
      when "genre"
        return collection[2].to_s
    end
  end

end
