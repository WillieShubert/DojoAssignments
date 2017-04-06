class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :string

      t.timestamps null: false
    end
  end
end
