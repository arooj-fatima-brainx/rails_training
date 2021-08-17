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

  # def show
  #   @book = Book.find_by(id: params[:id])
  #   if @book.nil?
  #     render action: "index"
  #   end
  # end

  # def show
  #   @book = Book.find_by(id: params[:id])
  #   if @book.nil?
  #     render action: "index"
  #   end
  # end

  def show
    @book = Book.find_by(id: params[:id])
    if @book.nil?
      @books = Book.all
      flash.now[:alert] = "Your book was not found"
      render "index"
    end
  end
  # def show
  #   @book = Book.find(params[:id])
  #   if @book.out_of_print?
  #     render action: "special_show" and return
  #   end
  #   render action: "regular_show"
  # end

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