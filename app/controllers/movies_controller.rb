class MoviesController < ApplicationController
  before_action :get_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @actors = @movie.actors
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = 'Movie created.'
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      flash[:notice] = 'Movie updated.'
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    if @movie.destroy
      flash[:alert] = 'Movie deleted.'
      redirect_to movies_path
    end
  end


  private

  def get_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :genre_id, actor_ids: [])
  end
end
