class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :favorite, default: 0

      t.timestamps null: false
    end
  end
end
