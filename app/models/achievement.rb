class Achievement < ApplicationRecord
  validates_presence_of :title, { message: " Title can't be blank" }

  enum privacy: [:public_access, :private_access, :friends_access]

  def description_html
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description).html_safe
  end
end