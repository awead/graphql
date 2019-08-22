# frozen_string_literal: true

module Types
  # GraphQL object for a Comment
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post, PostType, null: false
  end
end
