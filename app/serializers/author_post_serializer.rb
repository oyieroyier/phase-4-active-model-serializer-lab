class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    "#{self.object.content.first(40)}..."
  end

  has_many :tags
end
