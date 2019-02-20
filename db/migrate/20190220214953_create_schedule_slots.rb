class CreateScheduleSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_slots do |t|
      t.integer :main_eventable_id
      t.string :main_eventable_type
      t.datetime :start_time
      t.datetime :end_time
      t.integer :venue
      t.string :other_location

      t.timestamps
    end
  end
end
