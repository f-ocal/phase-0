class Book

  attr_accessor :author, :category

  def initialize title, author, category
    @title = title
    @author = author
    @category = category
    @books = []
  end

  def title
    @title
  end

  def title= new_title
    @title= new_title
  end

  def get_book(title)
    @books.select do |book|
      book.title == title
    end.first
  end

  def add_book(book)
    @books.push(book)
  end

end
