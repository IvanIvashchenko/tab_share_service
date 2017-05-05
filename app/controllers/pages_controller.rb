class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    # title = params[:title]
    url = params[:url]
    @urls = [url]
  end
end  