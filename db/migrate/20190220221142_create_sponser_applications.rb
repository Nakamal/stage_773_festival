class CreateSponserApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :sponser_applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
