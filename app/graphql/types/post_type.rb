# frozen_string_literal: true

module Types
  # GraphQL object for a Post
  class PostType < Types::BaseObject
    description 'A blog post'

    field :id, ID, null: false
    field :title, String, null: true
    field :truncated_preview, String, null: false
    field :comments, [CommentType], null: true,
                                    description: "This post's comments, or null if this post has comments disabled."
  end
end
