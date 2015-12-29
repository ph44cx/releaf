class Admin::BooksController < Releaf::BaseController
  def searchable_fields
    [:title, :genre, author: [:name] ]
  end

  def resources
    relation = super

    relation = relation.where( 'published_at >= ?', params[:published_since]) if params[:published_since].present?
    relation = relation.where( 'published_at <= ?', params[:published_up_to]) if params[:published_up_to].present?

    relation
  end

end
