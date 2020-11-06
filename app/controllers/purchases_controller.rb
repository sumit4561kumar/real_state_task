class PurchasesController < ApplicationController
    def create
      VeryLongTask.perform_later(params[:asset_id], current_user.id)
      redirect_to root_path, notice: 'your buy request has been accepted and in under process.'
    end
end