class Article < ApplicationRecord
	validates_presence_of :titre, :description, :prix
	belongs_to :utilisateur
	has_many :images
end
