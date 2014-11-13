class ArtworkIterationsController < ApplicationController
  before_action :set_artwork_iteration, only: [:show, :edit, :update, :destroy]
  # GET /artwork_iterations/1
  def show
  end

  # GET /artwork_iterations/new
  def new
    @artwork_iteration = ArtworkIteration.new
  end

  # GET /artwork_iterations/1/edit
  def edit
  end

  # POST /artwork_iterations
  def create
    @artwork_iteration = ArtworkIteration.new(artwork_iteration_params.except(:project_name))
    @artwork_iteration.user_id = current_user.id
    @artwork_iteration.project_id = Project.where(name: params[:artwork_iteration][:project_name]).last.id

    respond_to do |format|
      if @artwork_iteration.save
        format.html { redirect_to @artwork_iteration, notice: 'Artwork iteration was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /artwork_iterations/1
  def update
    respond_to do |format|
      if @artwork_iteration.update(artwork_iteration_params)
        format.html { redirect_to @artwork_iteration, notice: 'Artwork iteration was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /artwork_iterations/1
  def destroy
    @artwork_iteration.destroy
    respond_to do |format|
      format.html { redirect_to artwork_iterations_url, notice: 'Artwork iteration was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_iteration
      @artwork_iteration = ArtworkIteration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_iteration_params
      params.require(:artwork_iteration).permit(:name, :description, :image, :user_id, :project_name)
    end
end
