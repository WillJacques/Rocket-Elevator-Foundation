class InterventionsController < InheritedResources::Base
  before_action :set_intervention, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin_user!

  # GET /interventions
  # GET /interventions.json
  def index
    @interventions = Intervention.all
  end

  # GET /interventions/1
  # GET /interventions/1.json
  def show
  end

  # GET /interventions/new
  def new
    @intervention = Intervention.new
  end

  # GET /interventions/1/edit
  def edit
  end

  # POST /interventions
  # POST /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)
    respond_to do |format|
      if @intervention.save
        format.html { redirect_to @intervention, notice: 'Intervention was successfully created.' }
        format.json { render :show, status: :created, location: @intervention }
      else
        format.html { render :new }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interventions/1
  # PATCH/PUT /interventions/1.json
  def update
    respond_to do |format|
      if @intervention.update(intervention_params)
        format.html { redirect_to @intervention, notice: 'Intervention was successfully updated.' }
        format.json { render :show, status: :ok, location: @intervention }
      else
        format.html { render :edit }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1
  # DELETE /interventions/1.json
  def destroy
    @intervention.destroy
    respond_to do |format|
      format.html { redirect_to interventions_url, notice: 'Intervention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @interventions = Intervention.find(params[:id])
    end

    def intervention_params
      params.require(:intervention).permit(:author, :intervention_start, :intervention_stop, :result, :report, :status, :elevator_id, :battery_id, :column_id, :elevator_id, :employee_id, :customer_id, :building_id)
    end
end
