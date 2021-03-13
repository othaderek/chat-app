class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :conversations, include_nested_associations: true

  def conversations
    conversations = self.object.conversations.uniq
    # byebug
  end
end
