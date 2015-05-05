class PersonsController < ApplicationController
  def profile
  end
  
  def users_count
    @users_count = Users.count
  end
end
