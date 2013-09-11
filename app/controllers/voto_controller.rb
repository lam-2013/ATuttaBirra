class VotoController  < ApplicationController

  before_filter :signed_in_user

  respond_to :html, :js

  def create
    @user = User.find(params[:voto][:votato])
    current_user.vote!(@user)
    # without javascript: redirect_to @user
    respond_with @user

  end

end