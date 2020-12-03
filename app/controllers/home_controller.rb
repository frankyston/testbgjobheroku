class HomeController < ApplicationController
  def index
  end

  def update
    ids = params[:user][:ids].split(',')
    UpdateUsersJob.perform_later(ids)
    flash[:message] = 'Processando os usuários'
    redirect_to action: :index
  end
end
