class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
      t.integer :festival_application_id
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
