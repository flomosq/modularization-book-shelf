json.books @books do |book|
  json.partial! book, as: :book
end
