class AddPhoneToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :phone, :string
  end
end
