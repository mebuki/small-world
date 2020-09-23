class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string         :name,           null: false
      t.integer        :purpose_id,     null: false
      t.string         :place,          null: false
      t.string         :time,           null: false
      t.text           :info,           null: false
      # t.references     :comment,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
