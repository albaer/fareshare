class Account < ActiveRecord::Base
	belongs_to :group
	belongs_to :user
	has_many :created_expenses, foreign_key: :creator_id, class_name: "Expense"
	has_many :charges, foreign_key: :contributor_id
	has_many :contributing_expenses, through: :charges
end
