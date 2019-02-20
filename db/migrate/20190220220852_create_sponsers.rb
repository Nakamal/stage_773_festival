class CreateSponsers < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsers do |t|
      t.string :name
      t.string :website_link
      t.string :video_link
      t.boolean :foundation

      t.timestamps
    end
  end
end
