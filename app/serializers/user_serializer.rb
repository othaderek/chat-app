class UserSerializer < ActiveModel::Serializer
  attributes :username, :messages, :conversations

  def conversations
    self.object.conversations.uniq
  end
end
