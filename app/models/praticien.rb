class Praticien < ApplicationRecord
	has_many :affectations
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Praticien.create! row.to_hash
		end
	end

	def self.search(search)
  		if search
    		where('nom LIKE ? OR prenom LIKE ? OR pratique LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
  		else
    		all
  		end
	end

	validates :nom, presence: true,
		length: { minimum: 2 }

end
