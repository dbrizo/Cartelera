class CreateCartels < ActiveRecord::Migration
  def change
    create_table :cartels do |t|
      t.string :nombre
      t.integer :sala
      t.time :hora

      t.timestamps null: false
    end
  end
end
