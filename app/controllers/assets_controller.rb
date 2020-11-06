class AssetsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:show]
  def new
    @asset = Asset.new
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def update
    @asset = Asset.find(params[:id])
    respond_to do |format|
      if @asset.update(asset_params)
        format.html { redirect_to root_path, notice: 'Asset was successfully updated.' }
      else
        format.html { render action: 'edit', alert: @asset.errors.full_messages.to_sentence }
      end
    end
  end

  def create
    @asset = Asset.new(asset_params)
    respond_to do |format|
      if @asset.save
        format.html { redirect_to root_path, notice: 'Asset was successfully created.' }
      else
        format.html { render action: 'new', alert: @asset.errors.full_messages.to_sentence }
      end
    end
  end

  def destroy
  end

  private

  def asset_params
    params.require(:asset).permit(:id, :owner_email, :address, :sqmt, :price, :asset_type, :asset_image, :rooms, :floors,
                                  :air_cond, :units, :shops, :parking)
  end
end
