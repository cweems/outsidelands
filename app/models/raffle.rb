class Raffle < ApplicationRecord
  has_many :participants, class_name: "Participant"
end
