class Book
  attr_accessor :title, :author, :read?

  def initialize(title, author)
    @title = title
    @author = author
    @read? = false
  end
end