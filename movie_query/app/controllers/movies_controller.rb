class MoviesController < ApplicationController
  def search

    @title = params[:q]

    uri = URI("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=3w4er6dzz8w23ct8jhhbbmvt&q=#{@title}")

    jsonoutput = Net::HTTP.get(uri)

    file = JSON.parse(jsonoutput)
    moviesarray = file["movies"]
    movie1hash = moviesarray[0]
    @synopsis = movie1hash["synopsis"]
    castraw = movie1hash["abridged_cast"]
    castary = Array.new
    castraw.each do |a|
      castary << a["name"]
    end
    @cast = castary

    @movie = movie1hash["title"]

    posterhash = movie1hash["posters"]
    @posterurl = posterhash["detailed"]
    @time = movie1hash["runtime"]
    ratings = movie1hash["ratings"]
    @critic = ratings["critics_score"]
    @audience = ratings["audience_score"]

  end

  def home




  end
end
