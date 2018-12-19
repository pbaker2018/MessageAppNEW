require 'message'

RSpec.describe Message do

  subject (:message) { described_class.new("foo") }

describe '#show' do
  it 'will display a user message' do
    expect(message.show).to eq "foo"
  end
end

end
