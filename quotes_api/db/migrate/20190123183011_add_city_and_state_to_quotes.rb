class AddCityAndStateToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :city, :string
  end
end
