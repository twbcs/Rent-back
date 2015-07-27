class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :picture
      t.integer :sort
      t.string :title
      t.string :short
      t.text :description
      t.integer :day

      t.timestamps null: false
    end
  end
end
