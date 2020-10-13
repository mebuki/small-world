class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer       :purpose_id,     null: false
      t.string        :name,           null: false
      t.string        :event_date,     null: false
      t.string        :event_time,     null: false
      t.string        :place,          null: false
      t.text          :info,           null: false
      t.integer       :likes_count
      t.references    :user,           foreign_key: true
      t.timestamps
    end
  end
end
