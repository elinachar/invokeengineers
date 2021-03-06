class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_images = @project.project_images
    current_id = @project.id
    @other_projects = Project.where("id > ?", current_id).first(3)
    if @other_projects.size < 3
      @other_projects << Project.first
    end
    if @other_projects.size < 3
      @other_projects << Project.second
    end
    if @other_projects.size < 3
      @other_projects << Project.third
    end
  end

  # GET /projects/new
  def new
    @project = Project.new
    3.times { @project.project_images.build}
  end

  # GET /projects/1/edit
  def edit
    @project_images = @project.project_images
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :slug, :short_description, :description,
        :location, :year_string, :area, :cover_image_url, :photographer, :photographer_website,
      project_images_attributes: [:id, :image_url, :_destroy])
    end
end
