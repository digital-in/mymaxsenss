class Lieu < ApplicationRecord
	has_many :cabinets

	validates :nom, presence: true,
		length: { minimum: 2 }
end
