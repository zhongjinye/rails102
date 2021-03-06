class Account::GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.participated_groups
  end

  def edit
    @groups = Group.find(params[:id])
  end

  def destroy
    @group.destroy
    redirect_to groups_path, alert: "Group deleted"
  end
end
