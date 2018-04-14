class Song 
  attr_accessor :artist, :title, :name, :artist_name, :file_name
  
  def initialize(name)
    @name = name 
    @file_name = file_name
    puts self.name 
end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.title = filename.split(" - ")[1]
    self.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end