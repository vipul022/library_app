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
        author: Author.find(params[:author_id]),
        
        published_date: params[:book][:published_date]
      )
    
    
      # @book = Book.create(book_params)
      # byebug

      # p "----------- @books"
      # p @book
      # p "-------@params"
      # p params
    
      redirect_to books_path
    
    end
      
    def new
        
        @authors = Author.all
    end

    def show
        # @book_id = params[:id].to_i - 1
        # @book = session[:books][@book_id]

    end

    def edit
        # @book_id = params[:id].to_i - 1
        # @book = session[:books][@book_id]
        @authors = Author.all

    end


    def update
        # @book_id = params[:id].to_i - 1 
        # session[:books][@book_id] = params[:book]
        # redirect_to book_path(params[:id].to_i)
        # @book.update(book_params)
        # redirect_to @book
        @book  =Book.find(params[:id].to_i)
        p "----------"
        pp @book
        @book.update(
        title: params[:book][:title],
        author: Author.find(params[:author_id]),
        # author: params[:author_id].to_i ,
        published_date: params[:book][:published_date]
      )
      p "-----"
      pp "@book=> ", @book
      
      redirect_to @book
    
        
    end

    def destroy
        @book.destroy
        redirect_to root_path
    end

    def find_book
        @book = Book.find(params[:id])
    end
    private

    def book_params 
      params.require(:book).permit( :title, :published_date, :author_id)
     
      
    end

   
end
     

       