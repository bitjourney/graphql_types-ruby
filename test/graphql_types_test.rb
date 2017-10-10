# frozen_string_literal: true

require_relative "test_helper"

class GraphqlTypesTest < Minitest::Test
  def date
    @date ||= Time.now.round
  end

  def bigint
    340_282_366_920_938_463_463_374_607_431_768_211_456 # 2 ** 128
  end

  def test_that_it_has_a_version_number
    refute_nil ::GraphqlTypes::VERSION
  end

  def test_any_type_coerce_input
    assert do
      GraphqlTypes::AnyType.coerce_isolated_input("foo" => "bar") == { "foo" => 'bar' }
    end
  end

  def test_any_type_coerce_result
    assert do
      GraphqlTypes::AnyType.coerce_isolated_result("foo" => 'bar') == { "foo" => "bar" }
    end
  end

  def test_json_type_coerce_input
    assert do
      GraphqlTypes::JsonType.coerce_isolated_input('{"foo":"bar"}') == { "foo" => 'bar' }
    end
  end

  def test_json_type_coerce_result
    assert do
      GraphqlTypes::JsonType.coerce_isolated_result("foo" => 'bar') == '{"foo":"bar"}'
    end
  end

  def test_date_type_coerce_input
    assert do
      GraphqlTypes::DateType.coerce_isolated_input(date.iso8601) == date
    end
  end

  def test_date_type_coerce_result
    assert do
      GraphqlTypes::DateType.coerce_isolated_result(date) == date.iso8601
    end
  end

  def test_big_int_type_coerce_input
    assert do
      GraphqlTypes::BigIntType.coerce_isolated_input(bigint.to_s) == bigint
    end
  end

  def test_big_int_type_coerce_result
    assert do
      GraphqlTypes::BigIntType.coerce_isolated_result(bigint) == bigint.to_s
    end
  end
end
