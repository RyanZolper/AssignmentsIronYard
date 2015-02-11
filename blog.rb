class Blog
  attr_accessor :name, :user_name, :posts

  def initialize
    @posts = []
    @name = ''
    while @name.length < 1
      print 'Please enter a blog name: '
      @name = gets.chomp
    end
  end












end
