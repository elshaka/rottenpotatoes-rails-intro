class Movie < ActiveRecord::Base
  def self.search(params)
    movies = Movie.all
    movies = movies.order(:title) if params[:sort_by] == 'title'
    movies = movies.order(:release_date) if params[:sort_by] == 'release_date'
    movies = movies.where(rating: params[:ratings].keys) if params[:ratings].present?
    movies
  end

  def self.all_ratings
    ['G','PG','PG-13','R']
  end
end
