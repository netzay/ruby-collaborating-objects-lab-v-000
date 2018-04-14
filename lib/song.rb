class Song 
  attr_accessor :artist, :title, :name, :song_name, :file_name
  
  def initialize(name)
    @name = name 
    @file_name = file_name
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song_name = filename.split(" - ")[1]
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end