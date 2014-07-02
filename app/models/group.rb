class Group < ActiveRecord::Base
	belongs_to :creator, class_name: "User"
	has_many :expenses
	has_many :accounts
	has_many :members, through: :accounts, source: :user

	validates_presence_of :name
end
