class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :picture
      t.integer :sort
      t.string :brand
      t.string :model_no
      t.string :color
      t.string :displacement
      t.integer :pay
      t.text :description
      t.integer :cartype
      t.integer :period

      t.timestamps null: false
    end
  end
end
