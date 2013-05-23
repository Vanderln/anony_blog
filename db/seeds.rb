require 'faker'

5.times do
  Author.create(:name => Faker::Name.name, :email => Faker::Internet.email,
               :password => "asdfg")
end

20.times do
  Tag.create(
        :title => Faker::Lorem.word, 
        :author_id => 1 + rand(5) ) 
end


20.times do
  Post.create(
    :title => Faker::Lorem.word, 
    :body => Faker::Lorem.sentences(3).join(' '),
    :author_id => 1 +rand(5))
end


20.times do
  Post.find_by_id(1 + rand(20)).tags << Tag.find(1 + rand(20))
end
