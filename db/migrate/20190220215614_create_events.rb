class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.boolean :show
      t.string :name
      t.text :description
      t.integer :rating
      t.string :video_link
      t.integer :festival_id

      t.timestamps
    end
  end
end
