class Painting < ActiveRecord::Base
	belongs_to :artist
	belongs_to :museum

	validates :title, presence: true

	def self.search_titles(query)
    where('title LIKE :query', :query => "%#{query}%")
  end
end
