class ColumnsController < InheritedResources::Base

  private

    def column_params
      params.require(:column).permit(:battery_id, :type_of_building, :number_of_floors_served, :status, :information, :notes)
    end
    

end
