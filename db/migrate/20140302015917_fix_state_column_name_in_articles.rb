class FixStateColumnNameInArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :state, :location
  end
end
