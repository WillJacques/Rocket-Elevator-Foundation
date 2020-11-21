class BatteriesController < InheritedResources::Base

  def batteryselect
    if params[:building].present?
      @batteries = Building.find(params[:building]).batteries
    else
        @batteries = Building.all
    end
    if request.xhr?
        respond_to do |format|
            format.json {
                render json: {batteries: @batteries}
            }
        end
    end 
  end

  private

    def battery_params
      params.require(:battery).permit(:building_id, :type, :status, :employee_id, :commissioning_date, :last_inspection_date, :operations_certificate, :information, :notes)
    end

end
