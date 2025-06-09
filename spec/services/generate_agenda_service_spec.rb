require 'rails_helper'

RSpec.describe GenerateAgendaService do
  let(:festival) { Festival.create(name: 'Test Festival') }
  let(:group) { Group.create(name: 'Test Group') }
  let(:second_group) { Group.create(name: 'Second Test Group') }
  let(:stage) { Stage.create(name: 'Test Stage', festival:) }
  let(:second_stage) { Stage.create(name: 'Second Test Stage', festival:) }
  let(:start_time) { Time.current }
  let(:first_concert) { Concert.create(group:, stage:, start_time:, end_time: start_time + 1.hour) }
  let(:second_concert) { Concert.create(group: second_group, stage: second_stage, start_time:, end_time: start_time + 1.hour) }
  let(:selected_concerts) { [ first_concert, second_concert ] }
  let(:service) { GenerateAgendaService.new(festival, selected_concerts) }

  describe '#call' do
    it 'removes overlapping concerts from the agenda' do
      agenda = service.call

      agenda.reload

      expect(agenda.agenda_concerts.first.discarded).to be_falsey
      expect(agenda.agenda_concerts.second.discarded).to be_truthy
    end
  end
end
