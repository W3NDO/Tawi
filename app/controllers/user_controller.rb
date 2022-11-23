class UserController < ApplicationController

  def show
    @user = User.find_by(name: params[:name])
    @is_current_user = !current_user.nil?

    # if current_user.name == params[:name]
    #   # TODO add special permissions they're allowed to do or see here
    # else
    #   # TODO add default stuff for other guys visiting.
    # end
  end
end
