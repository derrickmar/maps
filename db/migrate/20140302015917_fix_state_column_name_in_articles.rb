class FixStateColumnNameInArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :state, :state_name
  end
end
