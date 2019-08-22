# frozen_string_literal: true

class SsGraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
