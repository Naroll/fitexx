class CreateRecalls < ActiveRecord::Migration[5.1]
  def change
    create_table :recalls do |t|
      t.string :name
      t.text :phone

      t.timestamps
    end
  end
end
