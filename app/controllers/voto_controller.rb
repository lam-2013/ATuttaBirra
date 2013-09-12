class VotoController  < ApplicationController

  before_filter :signed_in_user

  respond_to :html, :js


  def show_voto
    @voto = Votazione.find(params[:id])
  #  @voto = Votazione.find(params[:id])

  end

  def create_voto
    @voto = Votazione.new(params [:votato][:votante])
    @voto.user_id = current_user
    @user1 = User.find(params[:id])
  #  current_user.vote!(@user)
    # without javascript: redirect_to @user
    respond_with @user

  end


end