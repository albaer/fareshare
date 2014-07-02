class Expense < ActiveRecord::Base
	belongs_to :creator, class_name: "Account"
	belongs_to :group
	has_many :charges
	has_many :accounts, through: :charges
end
