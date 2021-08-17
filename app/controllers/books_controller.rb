class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(@book)
    else
      render :edit
    end
  end



  private
  def book_params
    params.require(:book).permit(:title, :year_published, :views)
  end
end


# render :edit
# render action: :edit
# render "edit"
# render action: "edit"
# render "books/edit"
# render template: "books/edit"   all same

# render plain: "OK"
# render html: helpers.tag.strong('Not Found')