class Puppy < ActiveRecord::Base
	validates :name, :age, :breed, :image, :bio, presence: true
end
