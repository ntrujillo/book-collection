class Book < ApplicationRecord
	has_many :users, through: :user_books
	has_many :user_books

	has_many :user, through: :userbooknews
	has_many :userbooknews
	validates :title, :author, :price, :published_date, presence: true
end
