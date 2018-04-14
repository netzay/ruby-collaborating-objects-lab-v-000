class MP3Importer
  attr_accessor :path, :filenames
  
  def initialize(path)
    @path = path
    @filenames = filenames
  end
    def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
  # def files
  #   Dir.chdir(@path) do | path |
  #       Dir.glob("*.mp3")
  #   end
  # end
 
  # def import
  #     files.each do |file|
  #         Song.new_by_filename(file)
  # end
  # end
end