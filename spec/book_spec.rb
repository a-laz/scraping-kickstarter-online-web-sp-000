describe "#initialize" do
  it "initializes a Book instance with a title" do
    book = Book.new("Old man in the Sea", "Moby")
    expect(book.title).to eq("Old man in the Sea")
  end

  it "initializes a Book instance with an author" do
    book = Book.new("Old man in the Sea", "Moby")
    expect(book.author).to eq("Moby")
  end
end
