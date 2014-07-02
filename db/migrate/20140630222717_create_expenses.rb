class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.string :notes
      t.integer :cost_in_cents
      t.datetime :date
      t.integer :creator_id
      t.integer :group_id

      t.timestamps
    end
  end
end
