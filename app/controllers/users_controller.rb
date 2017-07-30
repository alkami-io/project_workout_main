class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user ||= User.find_by_id(params[:id])

    options =  {
      query: {
        api_key: ENV['AF_ROUTINES_API_KEY'],
        user_id: @user.id
      }
    }

    response = RoutinesAPI.new
    @routines = response.routines(options)[:data]
  end
end
