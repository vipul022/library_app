class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy] 
    def index
        # @books = session[:books]
        @books = Book.all
    end

    def create
      #    if session[:books] == nil
      #     session[:books] = []
      # end 

      # session[:books].push(params[:book])
      # redirect_to book_path(session[:books].length)
      @book = Book.create(
        title: params[:book][:title],
        author: params[:book][:author],
        published_date: params[:book][:published_date]
      )
       redirect_to @book
      
    end
      
    def new

    end

    def show
        # @book_id = params[:id].to_i - 1
        # @book = session[:books][@book_id]

    end

    def edit
        # @book_id = params[:id].to_i - 1
        # @book = session[:books][@book_id]


    end


    def update
        # @book_id = params[:id].to_i - 1 
        # session[:books][@book_id] = params[:book]
        # redirect_to book_path(params[:id].to_i)
        @book.update(book_params)
        # redirect_to celebrity_path(@celebrity.id)
        redirect_to @book
    end

    def destroy

    end

    def find_book
        @book = Book.find(params[:id])
    end
    private

    def book_params 
      params.require(:book).permit(:title, :author, :published_date)
    end
end
     

       