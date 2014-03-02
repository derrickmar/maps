class FixBylineColumnNameInArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :byline, :state_name
  end
end
