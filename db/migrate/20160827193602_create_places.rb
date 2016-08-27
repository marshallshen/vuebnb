class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :city
      t.integer :price
      t.string :place_type
      t.integer :host_id
      t.string :image_url

      t.timestamps
    end
  end
end
