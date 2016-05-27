class Company < ActiveRecord::Base
	validates :name, :rut, presence: true, uniqueness: true
	validates :address, :category, presence: true

	has_many :users
	accepts_nested_attributes_for :users
end
 