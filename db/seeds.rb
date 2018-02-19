require 'random_data'

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "#{Post.count}"
 post_v = Post.find_or_create_by!(title: "Porsche 911", body:"is a two-door,
   2+2 high performance Rear engine classic German sports car made since 1963 by Porsche AG of Stuttgart, Germany.")

 Comment.find_or_create_by!(post: post_v, body:"My dream car.")
 puts "#{Post.count}"

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
