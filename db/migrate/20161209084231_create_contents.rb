class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :code, index: {unique: true}, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
