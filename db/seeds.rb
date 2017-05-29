require 'random_data'

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by!(
  title: "Idempotent title here",
  body: "My idempotent body to match the idempotent title"
)

Comment.find_or_create_by!(
  post: posts.find_by_title("Idempotent title here"),
  body: "This comment has an uniquely idempotent body"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
