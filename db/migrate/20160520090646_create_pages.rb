class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :code, unique: true, index: true
      t.text :content, null: false
      t.integer :position

      t.timestamps null: false
    end
  end
end
