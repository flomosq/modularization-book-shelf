# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  authors    :string
#  isbn       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_authors  (authors)
#  index_books_on_isbn     (isbn)
#  index_books_on_title    (title)
#

class Book < ApplicationRecord
  validates :title, :authors, :isbn, presence: true
end
