class Song
  attr_accessor :artist, :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all.push(self)
    puts " LISTEN TO #{name}"
  end

  def self.all
    @@all
  end
end
