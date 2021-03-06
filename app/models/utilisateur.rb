class Utilisateur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates_presence_of :nom, :prenom
	has_many :articles

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
