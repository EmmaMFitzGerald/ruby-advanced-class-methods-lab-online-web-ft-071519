class Song
  attr_accessor :name, :artist_name, :create
  @@all = []
  
  def self.create
    x = self.new 
    x.save 
    x
  end
  
   def self.new_by_name(the_name_of_song)
    song = self.new
    song = the_name_of_song
  end
  
  def self.create_by_name(name)
    song = self.new_by_name(name)
    @@all << song
  end
  
  def self.new_by_name(song_name)
    @name = song_name
    @name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
