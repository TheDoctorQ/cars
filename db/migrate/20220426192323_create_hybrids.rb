class CreateHybrids < ActiveRecord::Migration[7.0]
  def change
    create_table :hybrids do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
