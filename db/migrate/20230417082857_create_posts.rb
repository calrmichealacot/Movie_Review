class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :blurb
      t.date :date_released
      t.text :country_of_origin
      t.date :showing_starts
      t.date :showing_ends
      t.timestamps
    end
  end
end
