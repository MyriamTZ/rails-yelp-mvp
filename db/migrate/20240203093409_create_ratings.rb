class CreateRatings < ActiveRecord::Migration[7.1]
  def change
    create_table :ratings do |t|
      t.text :content
      t.rating :integer
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
