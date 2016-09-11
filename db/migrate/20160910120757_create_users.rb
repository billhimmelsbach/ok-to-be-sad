class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.text :image
      t.datetime :last_time_accessed
      t.string :telephone
      t.string :slug

      t.timestamps null: false
    end
  end
end
