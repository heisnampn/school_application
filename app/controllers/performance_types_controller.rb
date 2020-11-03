class PerformanceTypesController < ApplicationController

  before_action :set_performance


  def update
    authorize @performance
    @performance.update(performance_types_params)
    redirect_to root_path, notice: 'Range Successfully Updated'
  end

  private

  def set_performance
    @performance = PerformanceType.find(params[:id])
  end	
  
  def performance_types_params
    params.require(:performance_type).permit(:min_value, :max_value)
  end 

end
