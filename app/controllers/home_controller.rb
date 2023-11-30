class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
      redirect_to courses_path
  end
  end
  
