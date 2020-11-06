class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @assets = Asset.all
  end
end
