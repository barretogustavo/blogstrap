Article.delete_all

user = User.first
text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget ante sit amet tellus posuere auctor non at metus. Aliquam bibendum nulla vitae est pulvinar fringilla. Maecenas ornare erat vel vehicula eleifend. Vestibulum felis sapien, ultricies non iaculis nec, elementum non diam. Etiam ut quam tortor. Morbi neque dui, sollicitudin a pulvinar vitae, convallis in orci. Nunc tempor leo odio, vel euismod felis lobortis sit amet. Proin nunc leo, placerat vitae ultrices id, bibendum in leo. Nullam volutpat fermentum erat, vitae lacinia massa suscipit elementum."

p 'Iniciando...'

Category.all.each do |category|
  30.times do
    Article.create!(
      title: "Article #{rand(10_000)}",
      body: text,
      category_id: category.id,
      user_id: user.id,
      created_at: rand(350).days.ago
    )
  end
end

p 'Terminou.'