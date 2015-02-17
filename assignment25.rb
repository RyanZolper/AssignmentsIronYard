load 'blog.rb'
load 'post.rb'

loop do puts "Would you like to create a blog? (y/n)"
  blogcreation = gets.chomp.downcase
  break if blogcreation == "n"

  print 'Please enter a blog name: '
  name = gets.chomp
  blog = Blog.new(name)


  puts "Enter your username: "
  blog.user_name = gets.chomp

  loop do
    puts "Would you like to create a new post? (y/n)"
    postcreation = gets.chomp.downcase

    break if postcreation == "n"
    print 'Please enter a post title: '
    title = gets.chomp
    post = Post.new(title)



    puts "Enter the body of your post: "
    post.body = gets.chomp

    puts post.name
    puts post.summary
    puts post.body
    puts post.date
    puts post.wordcount
    blog.posts << post

    end

blog.posts.each do |a|
  puts "Post Title: #{a.name}"
  puts "Post Summary: #{a.summary}"
  puts "Post: #{a.body}"
  puts "Date created: #{a.date}"
  puts "There are #{a.wordcount} words in this posting."
  puts "\n"
end


end
