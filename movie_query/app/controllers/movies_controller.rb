class MoviesController < ApplicationController
  def search

    @title = params["title"]

    uri = URI("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=3w4er6dzz8w23ct8jhhbbmvt&q=#{@title}")

    jsonoutput = Net::HTTP.get(uri)

    file = JSON.parse(jsonoutput)
    @moviesarray = file["movies"]
    movie1hash = @moviesarray[0]
    @synopsis = movie1hash["synopsis"]

  end

end
