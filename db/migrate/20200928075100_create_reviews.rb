class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text        :text,  null: false
      t.references  :user,  null: false, foreign_key: true
      t.references  :tweet, null: false, foreign_key: true
      t.timestamps
    end
  end
end
