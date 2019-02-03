class FixAuthorColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :quotes, :auther, :author
  end
end
