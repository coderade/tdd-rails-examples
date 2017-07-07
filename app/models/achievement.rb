class Achievement < ApplicationRecord
	has_many :encouragements
  belongs_to :user, optional: true

  validates_presence_of :title, { message: "Title can't be blank" }
	validates_presence_of :user

	validates_uniqueness_of :title, {
			:scope => :user_id,
			message: "You can't have two achievements with the same title."
	}

  enum privacy: [:public_access, :private_access, :friends_access]

  mount_uploader :cover_image, CoverImageUploader

	def description_html
    Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description).html_safe
  end

	def silly_title
		"#{title} by #{user.email}"
	end

	def self.by_letter(letter)
		includes(:user).where('title LIKE?', "#{letter}%").order('users.email')
	end
end