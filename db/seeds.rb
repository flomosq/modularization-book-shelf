Book.destroy_all

10.times do
  Book.create(
    title: Faker::Book.title,
    authors: Faker::Book.author,
    isbn: Faker::Number.number(digits: 10)
  )
end

Rails.logger.info '10 Books created'
