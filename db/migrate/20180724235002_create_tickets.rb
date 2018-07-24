class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.belongs_to :raffle, index: true
      t.string :phone_number
      t.boolean :has_won

      t.timestamps
    end
  end
end
