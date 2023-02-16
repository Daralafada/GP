class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
	has_secure_password
	validates :first_name, presence: true
	validates :last_name, presence:true 
	validates :password, confirmation: true 
	validates :password_confirmation, presence: true 
end
