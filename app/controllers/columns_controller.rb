class ColumnsController < InheritedResources::Base

  def columnselect
    if params[:battery].present?
      @columns = Battery.find(params[:battery]).columns
    else
        @columns = Battery.all
    end
    if request.xhr?
        respond_to do |format|
            format.json {
                render json: {columns: @columns}
            }
        end
    end 
  end

  private

    def column_params
      params.require(:column).permit(:battery_id, :type_of_building, :number_of_floors_served, :status, :information, :notes)
    end
    

end
