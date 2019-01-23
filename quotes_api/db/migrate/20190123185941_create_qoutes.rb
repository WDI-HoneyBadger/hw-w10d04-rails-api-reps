class CreateQoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :qoutes do |t|
      t.string :content
      t.string :auther
      t.string :category

      t.timestamps
    end
  end
end
