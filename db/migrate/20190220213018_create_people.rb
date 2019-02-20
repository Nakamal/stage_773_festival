class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.string :title
      t.boolean :staff
      t.boolean :phone_public
      t.boolean :email_public
      t.boolean :performer

      t.timestamps
    end
  end
end
