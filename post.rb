

class Post
  require 'active_support'
  require 'active_support/all'
  attr_accessor :name, :summary, :body, :date, :wordcount

  def initialize(title)
    @date = Date.current
    @name = title

  end

  def wordcount
    @wordcount = @body.split.length
  end

  def summary
    @summary = @body.truncate(30)
  end








end
