require 'rails_helper'

RSpec.describe User, type: :model do
  let(:author) { User.create(name: 'You') }
  let(:recipient) { User.create(name: 'Monster') }
  let!(:kudo) { Kudo.create(author_id: author.id, recipient_id: recipient.id, reason: 'For science') }

  it "creates user with appropriate associations" do
    expect(author.given_kudos.first).to eq kudo
    expect(recipient.received_kudos.first).to eq kudo
  end
end
