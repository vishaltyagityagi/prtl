class DashboardsController < ApplicationController
  # before_action :authenticate_user!, only: [:post_job]
  # let(:sss) do
  #   provider_service('AddressStruct').new(addresses: [Address.last.as_json.deep_symbolize_keys])
  # end

  def index
  end

  def about_us
  end

  def contact_us
    @address = provider_service('AddressStruct').new(addresses: [Address.last.as_json.deep_symbolize_keys]).address
  end

  def single_job
  end

  def post_job
    Job.create(job_params)
    flash[:alert] = "Job has been created"
  end

  def blog
  end

  def job_listing
  end

  private

  def provider_service(name)
    "Controller::Dashboard::#{name}".constantize
  end

  def job_params
    params.require(:job).permit(:email)
  end

end
