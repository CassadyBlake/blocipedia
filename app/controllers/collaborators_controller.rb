class CollaboratorsController < ApplicationController
  before_action :authorize_premium

  def create
    @wiki = Wiki.find(params[:wiki_id])
    user = User.find_by(email: params[:collaborator][:email])
    @collaborator = Collaborator.new(wiki: @wiki, user: user)

    if @collaborator.save
      flash[:notice] = "Collaborator added."
    else
      flash[:alert] = "Action failed. Collaborator was not added."
    end
      redirect_to @wiki
  end

  def destroy
    @wiki = Wiki.find(params[:wiki_id])
    collaborator = @wiki.collaborators.find(params[:id])

    if collaborator.destroy
      flash[:notice] = "Collaborator removed."
    else
      flash[:alert] = "Removal of collaborator failed."
    end
      redirect_to @wiki
  end

  private

  def authorize_premium
    unless current_user.premium? || current_user.admin?
      flash[:alert] = "You must be a premium user or admin to do that."
    end
  end
end
