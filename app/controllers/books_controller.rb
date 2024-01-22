class BooksController < ApplicationController


  def create
    @book = Book.new
    @book.save
    redirect_to books_path(current_user.id)
  end

  def index
    @book = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(book.id)
  end


  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
