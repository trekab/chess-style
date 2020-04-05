class VotesController < ApplicationController
  before_action :require_user

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      redirect_back fallback_location: root_path, notice: 'You voted an article.'
    else
      redirect_back fallback_location: root_path, alert: 'You cannot vote this article.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_back fallback_location: root_path, notice: 'You unvoted an article.'
    else
      redirect_back fallback_location: root_path, alert: 'You cannot unvoted an article that you did not vote before.'
    end
  end
end
