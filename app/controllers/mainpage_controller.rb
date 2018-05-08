class MainpageController < ApplicationController
  def index
      @methods = Users.methods
      print @methods
      @users = User.all
  end
end
