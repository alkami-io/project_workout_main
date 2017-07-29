class UsersController < ApplicationController
  include HTTParty

  before_action :authenticate_user!

  def show
    @user ||= User.find_by_id(params[:id])

    response = HTTParty.get('http://localhost:3001/api/v1/routines?api_key=9d4a77caa554451e957755bf771cbe4d').deep_symbolize_keys
    @routines = response[:data]
  end
end
