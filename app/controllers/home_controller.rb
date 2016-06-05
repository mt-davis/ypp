class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @clients_count = Client.uniq.count
  end
end
