class CreateQuote2s < ActiveRecord::Migration[5.2]
  def change
    create_table :quote2s do |t|
      t.string :content
      t.string :author
      t.string :category

      t.timestamps
    end
  end
end
