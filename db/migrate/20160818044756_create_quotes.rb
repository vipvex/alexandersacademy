class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :source
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
