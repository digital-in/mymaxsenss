class Affectation < ApplicationRecord
  belongs_to :cabinet
  belongs_to :creneau
  belongs_to :praticien
end
