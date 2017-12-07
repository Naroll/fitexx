class CreateBackcalls < ActiveRecord::Migration[5.1]
  def change
    create_table :backcalls do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
