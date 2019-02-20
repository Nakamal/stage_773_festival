class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.date :application_start
      t.date :application_end
      t.date :public_start
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
