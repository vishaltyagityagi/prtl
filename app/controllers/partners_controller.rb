class PartnersController < ApplicationController

  def index
    @partners = Partner.where(active: true)
  end

  def show
    @partner = Partner.find(params[:id])
  end
end
