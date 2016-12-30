class IddsController < ApplicationController
  before_action :set_idd, only: [:show, :edit, :update, :destroy]

  before_action :set_project, only: [:new]

  # GET /idds
  # GET /idds.json
  def index
    @idds = Idd.all
  end

  # GET /idds/1
  # GET /idds/1.json
  def show
  end

  # GET /idds/new
  def new
    @idd = Idd.new
  end

  # GET /idds/1/edit
  def edit
  end

  # POST /idds
  # POST /idds.json
  def create
    @idd = Idd.new(idd_params)
#    @idd = @project.idds.create(idd_params)

#redirect_to @project.  Consider this once create is working.

    respond_to do |format|
      if @idd.save
        format.html { redirect_to @idd, notice: 'Idd was successfully created.' }
        format.json { render :show, status: :created, location: @idd }
      else
        format.html { render :new }
        format.json { render json: @idd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idds/1
  # PATCH/PUT /idds/1.json
  def update
    respond_to do |format|
      if @idd.update(idd_params)
        format.html { redirect_to @idd, notice: 'Idd was successfully updated.' }
        format.json { render :show, status: :ok, location: @idd }
      else
        format.html { render :edit }
        format.json { render json: @idd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idds/1
  # DELETE /idds/1.json
  def destroy
    @idd.destroy
    respond_to do |format|
      format.html { redirect_to idds_url, notice: 'Idd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idd
      @idd = Idd.find(params[:id])
    end

#### An IDD can be created from a project and as a stand alone.  For standalone a project ID has to be provided during IDD creation.
    def set_project
      if params[:project_id].present?
        @project = Project.find(params[:project_id])
      end
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def idd_params
      params.require(:idd).permit(:integration_id, :integration_name, :integration_type, :originating_system, :destination_system, :project_id)
    end
end
