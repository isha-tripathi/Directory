class HomeController < ApplicationController
  def entries
    batch_number = params[:batch_entry][:batch_number]
    if batch_number.blank?
      @error = 'Enter batch_number'
      render :index
    else
      redirect_to batch_path(batch_number)
    end
  end
end
