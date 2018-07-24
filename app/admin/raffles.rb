ActiveAdmin.register Raffle do

  permit_params :description, :number_of_winners, :start_time, :end_time

end
