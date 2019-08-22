# frozen_string_literal: true

module Types
  # GraphQL object for a listing of Post objects
  class PostList < Types::BaseObject
    description 'A listing of blog posts'

    field :id, ID, null: true
    field :title, String, null: true
    field :truncated_preview, String, null: false
  end
end
