class DosesController < ApplicationController
   def new
    @dose = Dose.new
  end

  def create
     @dose = Dose.new(dose)
    if @dose.save
      redirect_to dose(@dose)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find[params[:id]]
    @dose.destroy
  end
end
