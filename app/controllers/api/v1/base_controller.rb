class Api::V1::BaseController < ApplicationController
  #before_action :authenticate_user!
  #after_action :verify_authorized
  skip_before_filter :verify_authenticity_token
end
