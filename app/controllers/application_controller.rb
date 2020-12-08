class ApplicationController < ActionController::Base
  before_action :load_infos_team_projects

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  private

  def load_infos_team_projects
    @infos = Info.first
    @team_members = Team.all
    @projects = Project.all
  end

end
