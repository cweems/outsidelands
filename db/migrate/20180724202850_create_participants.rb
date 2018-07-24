class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.belongs_to :raffle, index: true
      t.string :phone_number
      t.boolean :is_winner
      t.timestamps
    end
  end
end
