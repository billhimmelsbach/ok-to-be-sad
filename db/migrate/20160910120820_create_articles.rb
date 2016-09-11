class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :content_type
      t.datetime :last_time_accessed
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
