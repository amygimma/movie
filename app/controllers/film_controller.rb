class FilmController < ApplicationController
  def index
    @films = Film.all()
  end

  def new
  end

  def create
    @film = Film.new(post_params)
    
    @film.save
    redirect_to film_index_path
  end
  
  
   private 
    def post_params
      params.require(:film).permit(:title, :year, :actors, :description)
    end
end
