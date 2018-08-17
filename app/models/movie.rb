class Movie < ActiveRecord::Base
  def self.search(params)
    movies = Movie.all
    movies = movies.order(:title) if params[:sort_by] == 'title'
    movies = movies.order(:release_date) if params[:sort_by] == 'release_date'

    movies
  end
end
