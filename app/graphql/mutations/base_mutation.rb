# frozen_string_literal: true

module Mutations
  # Base class for building mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    object_class Types::BaseObject
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
  end
end
