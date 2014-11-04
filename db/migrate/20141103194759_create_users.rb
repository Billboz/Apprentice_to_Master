class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.references :apprentice, index: true

      t.timestamps
    end
  end
end
