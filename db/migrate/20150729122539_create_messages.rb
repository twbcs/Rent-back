class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.timestamp :date
      t.text :description

      t.timestamps null: false
    end
  end
end