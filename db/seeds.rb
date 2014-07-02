# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###### creating users #####

users = [{first_name: "Kevin", last_name: "Kiley", email: "kevin@email.com", password: "password"},
				 {first_name: "Annie", last_name: "Baer", email: "annie@email.com", password: "password"},
				 {first_name: "Brian", last_name: "Austin", email: "brian@email.com", password: "password"},
				 {first_name: "Emily", last_name: "Stephenson", email: "emily@email.com", password: "password"},
				 {first_name: "Greg", last_name: "Margolis", email: "greg@email.com", password: "password"},
				 {first_name: "Kellen", last_name: "Short", email: "kellen@email.com", password: "password"},
				 {first_name: "Luke", last_name: "Short", email: "luke@email.com", password: "password"},
				 {first_name: "Katy", last_name: "Doll", email: "katy@email.com", password: "password"},
				 {first_name: "Ariel", last_name: "Zirulnick", email: "ariel@email.com", password: "password"},
				 {first_name: "Powell", last_name: "Latimer", email: "powell@email.com", password: "password"}]

User.create!(users)

###### creating groups #####

groups = [{name: "Folly Beach 2014", creator_id: 2},
					{name: "DC Expenses", creator_id: 2},
					{name: "Vermont 2013", creator_id: 2}]

Group.create!(groups)

###### creating accounts #####

kevin = Account.create!({group_id: 1, user_id: 1})
annie = Account.create!({group_id: 1, user_id: 2})
brian = Account.create!({group_id: 1, user_id: 3})
emily = Account.create!({group_id: 1, user_id: 4})
greg = Account.create!({group_id: 1, user_id: 5})
kellen = Account.create!({group_id: 1, user_id: 6})
luke = Account.create!({group_id: 1, user_id: 7})
katy = Account.create!({group_id: 1, user_id: 8})
ariel = Account.create!({group_id: 1, user_id: 9})
powell = Account.create!({group_id: 1, user_id: 10})


dc_ids = [1,2,3,4,5]
dc_ids.each do |id|
	Account.create!({group_id: 2, user_id: id})
end

vermont_ids = [1,2,3,4,5,8,9]
vermont_ids.each do |id|
	Account.create!({group_id: 3, user_id: id})
end

##### creating expenses #####

expenses = [{title: "Groceries and beer", notes: nil, cost_in_cents: 16997, date: DateTime.new(2014,6,28), creator_id: 2, group_id: 1},
						{title: "Groceries", notes: nil, cost_in_cents: 8782, date: DateTime.new(2014,6,29), creator_id: 2, group_id: 1},
						{title: "Parking", notes: nil, cost_in_cents: 2600, date: DateTime.new(2014,7,1), creator_id: 2, group_id: 1},
						{title: "More groceries and beer", notes: nil, cost_in_cents: 11833, date: DateTime.new(2014,6,30), creator_id: 2, group_id: 1},
						{title: "Beer", notes: nil, cost_in_cents: 3700, date: DateTime.new(2014,7,1), creator_id: 2, group_id: 1}]

Expense.create!(expenses)

##### creating charges #####

charges_1 = [{expense_id: 1, account_id: 1, payment_in_cents: 0 , debt_in_cents: 2125 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 2, payment_in_cents: 0 , debt_in_cents: 2125 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 3, payment_in_cents: 0 , debt_in_cents: 2125 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 4, payment_in_cents: 0 , debt_in_cents: 2125 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 5, payment_in_cents: 0 , debt_in_cents: 2125 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 6, payment_in_cents: 0 , debt_in_cents: 2124 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 7, payment_in_cents: 0 , debt_in_cents: 2124 , paid: false, contributing: true},
						 {expense_id: 1, account_id: 8, payment_in_cents: 0 , debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 1, account_id: 9, payment_in_cents: 0 , debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 1, account_id: 10, payment_in_cents: 16997, debt_in_cents: 2124, paid: true, contributing: true}]

Charge.create!(charges_1)

charges_2 = [{expense_id: 2, account_id: 1, payment_in_cents: 8782, debt_in_cents: 1097, paid: true, contributing: true},
						 {expense_id: 2, account_id: 2, payment_in_cents: 0, debt_in_cents: 1097, paid: false, contributing: true},
						 {expense_id: 2, account_id: 3, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true},
						 {expense_id: 2, account_id: 4, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true},
						 {expense_id: 2, account_id: 5, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true},
						 {expense_id: 2, account_id: 6, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true},
						 {expense_id: 2, account_id: 7, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true},
						 {expense_id: 2, account_id: 8, payment_in_cents: 0, debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 2, account_id: 9, payment_in_cents: 0, debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 2, account_id: 10, payment_in_cents: 0, debt_in_cents: 1098, paid: false, contributing: true}]

Charge.create!(charges_2)

charges_3 = [{expense_id: 3, account_id: 1, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 2, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 3, payment_in_cents: 0, debt_in_cents: 288 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 4, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 5, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 6, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 7, payment_in_cents: 1300, debt_in_cents: 289 , paid: true, contributing: true},
						 {expense_id: 3, account_id: 8, payment_in_cents: 0, debt_in_cents: 289 , paid: false, contributing: true},
						 {expense_id: 3, account_id: 9, payment_in_cents: 0, debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 3, account_id: 10, payment_in_cents: 1300, debt_in_cents: 289, paid: true, contributing: true}]

Charge.create!(charges_3)

charges_4 = [{expense_id: 4, account_id: 1, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 2, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 3, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 4, payment_in_cents: 0, debt_in_cents: 1478, paid: false, contributing: true},
						 {expense_id: 4, account_id: 5, payment_in_cents: 11833, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 6, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 7, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true},
						 {expense_id: 4, account_id: 8, payment_in_cents: 0, debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 4, account_id: 9, payment_in_cents: 0, debt_in_cents: 0, paid: false, contributing: false},
						 {expense_id: 4, account_id: 10, payment_in_cents: 0, debt_in_cents: 1479, paid: false, contributing: true}]

Charge.create!(charges_4)

charges_5 = [{expense_id: 5, account_id: 1, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 2, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 3, payment_in_cents: 3700, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 4, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 5, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 6, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 7, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 8, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 9, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true},
						 {expense_id: 5, account_id: 10, payment_in_cents: 0, debt_in_cents: 370, paid: false, contributing: true}]

Charge.create!(charges_5)