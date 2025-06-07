require "rails_helper"

RSpec.describe Agenda do
  describe "associations" do
    it { should have_many(:agenda_concerts) }
    it { should belong_to(:festival) }
  end
end
