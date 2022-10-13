class ApplicationController < ActionController::Base
before_action :today
before_action :index


  def today
    @today = Date.today
  end

end
