

class Post
  require 'active_support'
  require 'active_support/all'
  attr_accessor :name, :summary, :body, :date, :wordcount

  def initialize
    @date = Date.current
    @name = ''
    while @name.length < 1
      print 'Please enter a post name: '
      @name = gets.chomp
    end
  end

  def wordcount
    @wordcount = @body.split.length
  end

  def summary
    @summary = @body.truncate(30)
  end








end
