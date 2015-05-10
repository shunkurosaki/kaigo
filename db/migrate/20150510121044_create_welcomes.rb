class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :email
      t.string :number
      t.text :content

      t.timestamps null: false
    end
  end
end