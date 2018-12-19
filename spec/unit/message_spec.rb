require 'message'

RSpec.describe Message do

  subject (:message) { described_class.new("foo") }

  describe '#show' do
   it 'will display a user message' do
    expect(message.show).to eq "foo"
   end
  end

  describe '#timestamp' do
    it 'displays timestamp that user submitted message' do
      expect(message.timestamp).to eq Time.now.strftime("%d-%m-%Y %H:%M:%S")
    end
end
end
