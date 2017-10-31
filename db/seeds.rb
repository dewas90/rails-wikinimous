require 'faker'

puts 'Creating db...'
15.times do
  Article.create!(
    title: Faker::Demographic.race,
    content: Faker::Lorem.paragraphs,
  )
end
puts 'Finished!'
