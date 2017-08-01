class RoutinesController < ApplicationController
  before_action :authenticate_user!

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

  def create
    options =  {
      query: {
        api_key: ENV['AF_ROUTINES_API_KEY'],
      },
      body: {
        user_id: current_user.id,
        name: params[:name],
        focus: params[:focus]
      }
    }

    response = RoutinesAPI.new
    response.add_routine(options)

    redirect_to request.referer
  end

end
