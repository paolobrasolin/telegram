require "spec_helper"

RSpec.describe Telegram do
  it "has a version number" do
    expect(Telegram::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
