class ElevatorsController < InheritedResources::Base

 # def index
  #  @elevators = Elevator.all
  #
  
  def elevatorselect
    if params[:column].present?
      @elevators = Column.find(params[:column]).elevators
    else
        @elevators = Column.all
    end
    if request.xhr?
        respond_to do |format|
            format.json {
                render json: {elevators: @elevators}
            }
        end
    end 
  end
  
  private
    def elevator_params
      params.require(:elevator).permit(:column_id, :serial_number, :model, :type, :status, :commissioning_date, :last_inspection_date, :inspection_certificate, :information, :notes)
    end

    
end
