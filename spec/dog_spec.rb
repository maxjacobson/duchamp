require 'rails_helper'

RSpec.describe Dog do
  subject { Dog.new("Milo") }

  it { is_expected.to be_a Dog }
  it { expect(subject.name).to eq "Milo" }
end
