class RemoveStateNmColumn < ActiveRecord::Migration
  def change
  	remove_column :articles, :state_name
  end
end
