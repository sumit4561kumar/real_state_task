class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :owner_email,  null: false, default: ''
      t.string :address,  null: false, default: ''
      t.integer :sqmt,  null: false, default: 0
      t.decimal :price,  null: false
      t.string :asset_type,  null: false, default: ''
      t.string :asset_image,  null: false, default: ''
      t.integer :rooms, null:false, default: 0
      t.integer :floors, null:false, default: 0
      t.boolean :air_cond, null:false, default: false
      t.integer :units, null:false, default: 0
      t.integer :shops, null:false, default: 0
      t.integer :parking, null:false, default: 0
      t.timestamps
    end
  end
end
