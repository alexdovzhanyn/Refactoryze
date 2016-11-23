class Snippet < ApplicationRecord
	belongs_to :user
	has_many :refactors

end
