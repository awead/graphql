# frozen_string_literal: true

module Mutations
  # Creates a new Post object
  class CreatePost < BaseMutation
    null true

    argument :title, String, required: true
    argument :truncated_preview, String, required: false

    field :post, Types::PostType, null: true
    field :errors, [String], null: false

    def resolve(title:, truncated_preview:)
      post = Post.new(title: title, truncated_preview: truncated_preview)
      if post.save
        {
          post: post,
          errors: []
        }
      else
        {
          post: nil,
          errors: post.errors.full_messages
        }
      end
    end
  end
end
