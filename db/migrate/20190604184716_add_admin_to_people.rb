class AddAdminToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :admin, :boolean
  end
end
