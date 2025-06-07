require "rails_helper"

RSpec.describe Stage do
  describe "associations" do
    it { should have_many(:concerts) }
    it { should belong_to(:festival) }
  end
end
