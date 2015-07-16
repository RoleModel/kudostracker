class KudosController < ApplicationController

  def index
    @kudos = Kudo.all
  end
end
