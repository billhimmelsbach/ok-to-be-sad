class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.text :image
      t.text :video
      t.datetime :last_time_accessed
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
