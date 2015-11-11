class LicensesController < ApplicationController
  def index
    @licenses = License.order("created_at desc").page(params[:page]).per_page(20)
  end

  def edit
     @licenses = current_user.licenses.find(params[:id])
  end

  def show
    @licenses = License.find(params[:id])
  end

  def create
    @licenses = current_user.licenses.new(params[:licenses])
  end

  def new
     @licenses = current_user.licenses.new
  end

  def update
     @licenses = current_user.pins.find(params[:id])

    respond_to do |format|
      if @licenses.update_attributes(params[:licenses])
        format.html { redirect_to @licenses, notice: 'License was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @licenses.errors, status: :unprocessable_entity }
  end

  def destroy
  end
end
