class AuthorsController < ApplicationController
    before_action :find_book, only: [:show] 

  def index
    @authors = Author.all
  end

  def show

  end

  def new

  end

  def create
    @author = Author.create(author_params)
    #   name: params[:author][:name],
    #   date_of_birth: params[:author][:date_of_birth]
    # )
    redirect_to @author
  end

  def edit
     

  end

  def update

  end


  private
  def find_book
    @author = Author.find(params[:id])
  end

  def author_params 
      params.require(:author).permit(:name, :date_of_birth)
  end
end
