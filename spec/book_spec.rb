describe "#initialize" do
  it "initializes a Book instance with a title" do
    book = Book.new("Old man in the Sea", "Moby")
    expect(book.title).to eq("Old man in the Sea")
  end
end