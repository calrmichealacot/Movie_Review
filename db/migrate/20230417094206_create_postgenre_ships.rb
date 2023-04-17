class CreatePostgenreShips < ActiveRecord::Migration[7.0]
  def change
    create_table :postgenre_ships do |t|
      t.references :post
      t.references :genre
      t.timestamps
    end
  end
end
