class MP3Importer
  attr_accessor :path, :song
  @@all = []
  def initialize(path)

    @path = path
    @@all << @path
  end

  def files
    Dir["#{@path}/*.mp3"].map {|f| f.split('/').last}
  end
  def import
    files.each do |f|
      Song.new_by_filename(f)
    end
  end
end
