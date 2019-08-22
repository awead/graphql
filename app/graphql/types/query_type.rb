# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'

    field :post, PostType, null: true do
      description 'Find a post by ID'
      argument :id, ID, required: true
    end

    field :posts, [PostType], null: true do
      description 'Return all posts'
    end

    def post(id:)
      Post.find(id)
    end

    def posts
      Post.all
    end
  end
end
