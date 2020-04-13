class VotesController < ApplicationController
  before_action :require_user

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      flash[:success] = 'You voted an article.'
    else
      flash[:danger] = 'You cannot vote this article.'
    end
    redirect_back fallback_location: root_path
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      flash[:success] = 'You unvoted an article.'
    else
      flash[:danger] = 'You cannot unvoted an article that you did not vote before.'
    end
    redirect_back fallback_location: root_path
  end
end
