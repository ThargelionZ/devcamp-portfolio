# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Bacon ipsum dolor amet kevin bacon andouille corned beef tri-tip pork belly pork ball tip sirloin salami pastrami tongue porchetta ground round beef ribs. Flank beef capicola turkey tongue. Turducken flank meatball, ground round pastrami strip steak kevin landjaeger picanha. Tri-tip chicken boudin rump landjaeger pork chop salami pancetta turkey cupim kevin brisket cow prosciutto venison. Chuck tongue ham capicola leberkas filet mignon beef. Prosciutto shankle alcatra, boudin cupim turducken brisket ham hock capicola pastrami pork. Ball tip biltong andouille, jowl ground round venison spare ribs pork chop chuck pork loin.",
    topic_id: Topic.last.id
  )
end

puts "10 Blog Posts Created"

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill}",
    percent_utilized: 15
  )
end

puts "5 Skills Created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Bacon ipsum dolor amet kevin bacon andouille corned beef tri-tip pork belly pork ball tip sirloin salami pastrami tongue porchetta ground round beef ribs. Flank beef capicola turkey tongue. Turducken flank meatball, ground round pastrami strip steak kevin landjaeger picanha. Tri-tip chicken boudin rump landjaeger pork chop salami pancetta turkey cupim kevin brisket cow prosciutto venison. Chuck tongue ham capicola leberkas filet mignon beef. Prosciutto shankle alcatra, boudin cupim turducken brisket ham hock capicola pastrami pork. Ball tip biltong andouille, jowl ground round venison spare ribs pork chop chuck pork loin.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Bacon ipsum dolor amet kevin bacon andouille corned beef tri-tip pork belly pork ball tip sirloin salami pastrami tongue porchetta ground round beef ribs. Flank beef capicola turkey tongue. Turducken flank meatball, ground round pastrami strip steak kevin landjaeger picanha. Tri-tip chicken boudin rump landjaeger pork chop salami pancetta turkey cupim kevin brisket cow prosciutto venison. Chuck tongue ham capicola leberkas filet mignon beef. Prosciutto shankle alcatra, boudin cupim turducken brisket ham hock capicola pastrami pork. Ball tip biltong andouille, jowl ground round venison spare ribs pork chop chuck pork loin.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 Portfolio Items Created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}", 
    portfolio_id: Portfolio.last.id
    )
end

puts "3 Technologies Created"