class BooksController < ApplicationController

    def index
        @books = session[:books]
    end

    def create
         if session[:books] == nil
          session[:books] = []
      end 

      session[:books].push(params[:book])
      redirect_to book_path(session[:books].length)
      
    end
      
    def new

    end

    def show
        @book_id = params[:id].to_i - 1
        @book = session[:books][@book_id]
    end

    def edit
        @book_id = params[:id].to_i - 1
        @book = session[:books][@book_id]

    end


    def update
        @book_id = params[:id].to_i - 1 
        session[:books][@book_id] = params[:book]
        redirect_to book_path(params[:id].to_i)
    end

    def destroy

    end
end
     

       