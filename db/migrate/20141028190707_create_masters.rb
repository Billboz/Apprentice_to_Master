class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name
      t.string :domain
      t.string :city
      t.boolean :state

      t.timestamps
    end
  end
end
