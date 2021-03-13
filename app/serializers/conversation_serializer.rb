class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :users, :messages

  def users
    self.object.users.uniq
  end
  
end
