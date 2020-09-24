class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer       :purpose_id,   null: false
      t.string        :name,         null: false
      t.string        :time,         null: false
      t.string        :place,        null: false
      t.text          :info,         null: false
      t.timestamps
    end
  end
end
