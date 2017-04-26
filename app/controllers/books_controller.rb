class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      format.csv {render plain: Book.generate_csv(@books)}
    end
  end

end
