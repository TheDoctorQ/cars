class CreateElectrics < ActiveRecord::Migration[7.0]
  def change
    create_table :electrics do |t|
      t.string :name
      t.string :color
      t.string :manufacturer
      t.integer :year

      t.timestamps
    end
  end
end
