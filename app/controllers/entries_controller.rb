class EntriesController < ApplicationController

  def create
    @entry = Entry.new(user_params)

    if @entry.save
      redirect_to @entry
    else
      render new_entry_path
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def index
    if params[:batch_number].blank?
      redirect_to root_path
    end
    @entries = Entry.where(:batch_number => params[:batch_number].to_i)
  end

  private
    def user_params
      params.require(:entry).permit(:name, :batch_number, :phone_number)
    end
end
