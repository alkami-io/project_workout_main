class RoutinesController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def show
    options =  {
      query: {
        api_key: ENV['AF_ROUTINES_API_KEY'],
        user_id: current_user.id
      }
    }

    response = RoutinesAPI.new
    @routine = response.routine(options, params[:id])
  end

  def new

  end
end
