class ConversationsController < ApplicationController
    
    def index
        render json: Conversation.all
    end

    def show
        render json: Conversation.find(params[:id])
    end
end
