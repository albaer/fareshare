class User < ActiveRecord::Base
	has_many :created_groups, foreign_key: :creator_id, class_name: "Group"
	has_many :accounts
	has_many :groups, through: :accounts

	has_secure_password

	validates_presence_of :email
	validates_uniqueness_of :email
end
