class CreateSeoTools < ActiveRecord::Migration[5.0]
  def change
    create_table :seo_tools do |t|
      t.string :code, index: {unique: true}, null: false
      t.string :value

      t.timestamps null: false
    end
  end
end
