class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :code, index: {unique: true}, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
