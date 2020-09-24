class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string         :name,           null: false
      t.integer        :porpose_id,     null: false
      t.string         :place,          null: false
      t.time           :event_time,     null: false
      t.date           :event_day,      null: false
      t.datetime       :event_info,     null: false
      t.text           :info,           null: false
      # t.references     :comment,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
