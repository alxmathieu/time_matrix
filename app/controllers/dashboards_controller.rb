class DashboardsController < ApplicationController
  require 'google/apis/calendar_v3'

  def show
    @user = current_user
    #call google api and retrieve info
    #find or create the calendars from the api response
  end

  # def authorize_user_to_google_api(user)
  #   calendar_service = Google::Apis::CalendarV3::CalendarService.new
  #   calendar_service.authorization = user.access_token

  # end

end
