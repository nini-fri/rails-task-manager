class ApplicationController < ActionController::Base
  def show
    @task = Task.find(params[:id])
  end
end
