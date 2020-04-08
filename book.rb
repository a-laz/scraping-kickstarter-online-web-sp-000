class Book
  attr_accessor :title, :author, :read

  def initialize(title)
    @title = title
    @read = false
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name(author)
    self.author = author unless self.author == author
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

  def add_book(book)
    @book << book
    book.author = self unless book.author == self
  end

  def books
    Book.all.select{|book| book.author == self }
  end
end
