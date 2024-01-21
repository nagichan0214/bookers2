class BooksController < ApplicationController


  def create
    @book = Book.new
    @book.save
    redirect_to books_path(current_user.id)
  end

  def index
    @book = Book.new
  end

  def edit
  end

  def show
  end
end
