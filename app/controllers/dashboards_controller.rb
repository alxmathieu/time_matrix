class DashboardsController < ApplicationController
  def show
    @user = current_user
    #call google api and retrieve info
    #find or create the calendars from the api response
  end
end
