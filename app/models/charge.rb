class Charge < ActiveRecord::Base
	belongs_to :expense
	belongs_to :account
end
