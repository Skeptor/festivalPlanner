require "rails_helper"

RSpec.describe AgendaConcert do
  describe "associations" do
    it { should belong_to(:concert) }
    it { should belong_to(:agenda) }
  end
end
