class ApplicationController < ActionController::Base
  before_action :load_infos

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  private

  def load_infos
    @infos = Info.first
  end

end
