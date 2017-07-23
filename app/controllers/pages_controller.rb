class PagesController < ApplicationController
  #
  ## Force Sign in before
  before_action :authenticate_user!


  #
  ## Home Page
  def home

  end


end
