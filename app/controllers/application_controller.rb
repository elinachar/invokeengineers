class ApplicationController < ActionController::Base
  before_action :load_infos_team

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  private

  def load_infos_team
    @infos = Info.first
    @team_members = Team.all
  end

end
