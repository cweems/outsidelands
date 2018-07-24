class Participant < ApplicationRecord
  belongs_to :raffle, class_name: "Raffle"
end
