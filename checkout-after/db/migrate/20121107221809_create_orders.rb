class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.string :card_last_four
      t.decimal :amount

      t.timestamps
    end
  end
end
