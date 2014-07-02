class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
    	t.integer :expense_id
    	t.integer :account_id
    	t.integer :payment_in_cents
    	t.integer :debt_in_cents 
    	t.boolean :paid, default: false
    	t.boolean :contributing, default: true

      t.timestamps
    end
  end
end
