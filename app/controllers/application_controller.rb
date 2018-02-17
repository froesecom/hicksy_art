class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_device_type

  private
  def set_device_type
    @device_type = if browser.device.mobile?
                     :mobile
                   elsif browser.device.tablet?
                     :tablet
                   else
                     :desktop
                   end
  end
end
