require 'rails_helper'

RSpec.describe Kudo, type: :model do
  let(:author) { User.create(name: 'You') }
  let(:recipient) { User.create(name: 'Monster') }
  let(:kudo) { Kudo.create(author_id: author.id, recipient_id: recipient.id, reason: 'For science') }

  it "creates kudo with appropriate associations" do
    expect(kudo.author).to eq author
    expect(kudo.recipient).to eq recipient
    expect(kudo.reason).to eq 'For science'
  end
end
