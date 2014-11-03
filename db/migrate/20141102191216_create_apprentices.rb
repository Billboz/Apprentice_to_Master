class CreateApprentices < ActiveRecord::Migration
  def change
    create_table :apprentices do |t|
      t.string :name
      t.string :city
      t.string :master_name
      t.belongs_to :master, index: true

      t.timestamps
    end
  end
end
