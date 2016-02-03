class AppsController < ApplicationController
  def index
    @apps = App.all
    @members = Member.all
  end

  def show
    @apps = App.all
    @members = Member.all
    if params[:member_id]
      @member = Member.find(params[:member_id])
    end
    @app= App.find(params[:id])
  end
end
