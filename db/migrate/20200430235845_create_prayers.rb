class CreatePrayers < ActiveRecord::Migration[5.2]
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :pray

      t.timestamps
    end
  end
end
