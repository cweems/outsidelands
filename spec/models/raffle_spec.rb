require 'rails_helper'
require 'pry'

RSpec.describe Raffle, :type => :model do
  context "valid" do
    it "has many participants" do
      assc = described_class.reflect_on_association(:participants)
      expect(assc.macro).to eq :has_many
    end

    it "has name" do
      expect(Raffle.new(description: 'First raffle')).to be_valid
    end
  end
end
