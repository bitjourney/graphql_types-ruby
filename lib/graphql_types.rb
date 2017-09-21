# frozen_string_literal: true

require_relative "./graphql_types/version"

require "graphql"
require "json"
require "time"

module GraphqlTypes
  # @type [GraphQL::ScalarType]
  JsonType = GraphQL::ScalarType.define do
    name "JSON"
    description "A dynamic object"

    coerce_input ->(x, _context) { JSON.parse(x) }
    coerce_result ->(x, _context) { JSON.dump(x) }
  end

  # @type [GraphQL::ScalarType]
  DateType = GraphQL::ScalarType.define do
    # https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date
    name "Date"
    description "A single moment of a time"

    coerce_input ->(x, _context) { Time.parse(x) }
    coerce_result ->(x, _context) { x.iso8601 }
  end

  # @type [GraphQL::ScalarType]
  BigIntType = GraphQL::ScalarType.define do
    # https://github.com/tc39/proposal-bigint
    name "BigInt"
    description "An arbitrary precision integer"

    coerce_input ->(x, _context) { x.to_i }
    coerce_result ->(x, _context) { x.to_s }
  end
end
