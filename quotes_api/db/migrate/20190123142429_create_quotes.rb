class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :string
      t.string :author
      t.string :string
      t.string :category
      t.string :string

      t.timestamps
    end
  end
end
