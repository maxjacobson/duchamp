# frozen_string_literal: true
RSpec.describe "foo" do
  # this is a convention style offense (single quotes):
  it 'exist' do
    # this is a lint offense (unused variable):
    fafa = 47
    expect(true).to eq true
  end
end
