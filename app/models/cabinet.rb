class Cabinet < ApplicationRecord
	belongs_to :lieu
	has_many :affectations
end
