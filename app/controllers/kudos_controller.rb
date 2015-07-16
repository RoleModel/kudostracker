class KudosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @kudos = Kudo.all
  end

  def create
    author = User.find_or_create_by(name: params[:user_name])
    recipient = User.find_or_create_by(name: recipient_name)
    kudo = Kudo.create(author_id: author.id, recipient_id: recipient.id, reason: kudo_reason)

    render status: :ok, json: 'Good'
  end

  private

  def parsed_kudo
    /\Ato @(?<recipient>[\w\.]+) for (?<reason>.+)\z/.match(params[:text])
  end

  def recipient_name
    parsed_kudo[:recipient]
  end

  def kudo_reason
    parsed_kudo[:reason]
  end
end
