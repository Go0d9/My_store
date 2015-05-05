class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, :with => :render_403
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404   
    rescue_from ActionController::RoutingError, :with => :render_404
  end 
    def users_count
      @users_count = User.count
    end
  private

    def item_params
      params.require(:item).permit(:price, :name, :real, :weight, :description, 
                                   :image_url, :image)
    end
    
    def render_403
      render file: "public/403.html", status: 403
    end

    def render_404
      render file: "public/404.html", status: 404
    end

    def check_if_admin
     render_404 unless current_user && current_user.admin?
    end
    
end
