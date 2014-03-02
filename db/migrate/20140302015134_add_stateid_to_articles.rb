class AddStateidToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :state_id, :integer
  end
end
