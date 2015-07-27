class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :picture
      t.string :title
      t.string :link
      t.integer :ad_model

      t.timestamps null: false
    end
  end
end
