require 'random_data'

#Create Posts
# 50.times do
#   Post.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph
#   )
# end
# posts = Post.all

#Create comments
# 100.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end

#Create Questions
50.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: [true, false].sample
  )
end

puts "Seed finished"
puts "#{Question.count} questions created"
