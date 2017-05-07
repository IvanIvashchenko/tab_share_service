class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @tabs = params[:data]
  end
end
