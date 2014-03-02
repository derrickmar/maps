class FixBylineColumnNameAgainInArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :byline, :location
  end
end
