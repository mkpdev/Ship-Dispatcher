class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :status
      t.string :origin
      t.bigint :passengers

      t.timestamps
    end
  end
end
