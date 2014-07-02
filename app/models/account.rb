class Account < ActiveRecord::Base
	belongs_to :group
	belongs_to :user
	has_many :created_expenses, foreign_key: :creator_id, class_name: "Expense"
	has_many :charges
	has_many :expenses, through: :charges
end
