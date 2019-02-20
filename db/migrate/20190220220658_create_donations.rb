class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :sponser_id
      t.decimal :amount
      t.date :start_date

      t.timestamps
    end
  end
end
