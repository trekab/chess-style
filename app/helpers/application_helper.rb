module ApplicationHelper
  def menu_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'menu-item active' : 'menu-item'

    content_tag(:div, class: class_name) do
      link_to link_text, link_path
    end
  end

  def vote_or_unvote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Unvote!', vote_path(id: vote.id, article_id: article.id), method: :delete)
    else
      link_to('Vote!', votes_path(article_id: article.id), method: :post)
    end
  end
end
