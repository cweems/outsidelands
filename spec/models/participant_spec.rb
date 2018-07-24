require 'rails_helper'
require 'pry'

RSpec.describe Participant, :type => :model do
  context "valid" do
    it "belongs to raffle" do
      assc = described_class.reflect_on_association(:raffle)
      expect(assc.macro).to eq :belongs_to
    end

    it "has phone number" do
      raffle = Raffle.new(description: 'First raffle')
      expect(Participant.new(phone_number: '+1800123456', raffle: raffle)).to be_valid
    end
  end
end
