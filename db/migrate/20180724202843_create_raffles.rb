class CreateRaffles < ActiveRecord::Migration[5.2]
  def change
    create_table :raffles do |t|
      t.string :description
      t.integer :number_of_winners
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
