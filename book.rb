class Book
  attr_accessor :title, :author, :read

  def initialize(title, author)
    @title = title
    @author = author
    @read = false
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end

class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end
end
