class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @tabs = params[:data]
    id = SecureRandom.hex
    path = Rails.root.join('public', 'pages', "#{id}.html")
    content = render_to_string 'index'
    File.open(path, 'w+') do |f|
      f.write(content)
    end
    url = "#{request.original_url}page/#{id}"
    render plain: url
  end

  def show
    id = params[:id]
    render file: Rails.root.join('public', 'pages', "#{id}.html")
  end
end
