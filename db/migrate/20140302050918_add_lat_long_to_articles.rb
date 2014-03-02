class AddLatLongToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :latitude, :decimal
    add_column :articles, :longitude, :decimal
  end
end
