require 'rails_helper'

RSpec.describe GenerateAgendaService do
  let(:festival) { create(:festival) }
  let(:start_time) { Time.current }
  let(:first_concert) { create(:concert, start_time:, end_time: start_time + 1.hour) }
  let(:second_concert) { create(:concert, start_time:, end_time: start_time + 1.hour) }
  let(:service) { GenerateAgendaService.new(festival, concerts) }

  describe '#call' do
    it 'removes overlapping concerts from the agenda' do
      agenda_concerts = service.call

      expect(agenda_concerts).to_not include(concerts.first)
    end
  end
end
