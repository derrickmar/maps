class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :body
      t.string :byline
      t.integer :date
      t.string :title
      t.string :url
      t.string :state

      t.timestamps
    end
  end
end
