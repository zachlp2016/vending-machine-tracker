class Merchant::BaseController < ApplicationController
  before_action :require_merchant
  def require_merchant
    binding.pry
    render file:"/public/404" unless current_merchant? || current_admin?
  end
end
