class ApplicationController < ActionController::Base

  private

  def pagination_params
    { page: params[:page] || 1, per_page: params[:per_page] || 10 }
  end
end
