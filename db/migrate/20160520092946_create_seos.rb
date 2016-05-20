class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.belongs_to :page, index: true

      t.timestamps null: false
    end
  end
end
