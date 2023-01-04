class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def initialize
    super
    @categories = Category.all
  end
end
