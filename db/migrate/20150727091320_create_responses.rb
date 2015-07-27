class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :title
      t.string :name
      t.boolean :sex
      t.string :phone
      t.string :email
      t.boolean :sent
      t.text :post

      t.timestamps null: false
    end
  end
end
