class CreateFestivalApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :festival_applications do |t|
      t.string :confirmation_code
      t.string :group_name
      t.string :facebook
      t.string :twitter
      t.integer :rating
      t.integer :person_id
      t.integer :festival_id
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :second_contact_name
      t.string :second_email
      t.string :second_phone
      t.string :group_website
      t.text :promo_summary
      t.text :schedule_requirements
      t.text :tech_requirements
      t.string :judge_video_link
      t.string :promo_video_link

      t.timestamps
    end
  end
end
