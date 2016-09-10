class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :receiver_id
      t.boolean :seen
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
