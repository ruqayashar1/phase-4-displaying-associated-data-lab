class ItemsController < ApplicationController
    def index
      items = Item.all
      render json: items.to_json(include: :user)
    end
  end
