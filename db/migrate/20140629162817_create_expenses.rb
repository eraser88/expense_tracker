class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.text :category
      t.decimal :amount

      t.timestamps
    end
  end
end
