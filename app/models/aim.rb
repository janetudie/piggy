class Aim < ActiveRecord::Base
	has_many :reds, dependent: :destroy
	has_many :greens, dependent: :destroy

	belongs_to :user

	validates :description, 
						presence: true,
						length: { maximum: 20 } 


end
