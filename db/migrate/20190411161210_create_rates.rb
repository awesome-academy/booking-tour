class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :tour, foreign_key: true
      t.timestamps
    end
  end
end
