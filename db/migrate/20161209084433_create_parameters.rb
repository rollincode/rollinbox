class CreateParameters < ActiveRecord::Migration[5.0]
  def change
    create_table :parameters do |t|
      t.string :code, index: {unique: true}, null: false
      t.string :value, null: false

      t.timestamps null: false
    end
  end
end
