require 'message'
require 'timecop'

RSpec.describe Message do
  before do
    Timecop.freeze(Time.now)
  end

  subject (:message) { described_class.create(content: 'foo') }

  describe '#content' do
    it 'will display a user message' do
      expect(message.content).to eq 'foo'
    end
  end

  describe '#created_at' do
    it 'displays time that user submitted message' do
      expect(message.created_at).to eq Time.now
    end
  end
end
