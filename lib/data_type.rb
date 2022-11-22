# Copyright (c) 2022 Bradley J. Tannor. All rights reserved. Released under the
# GNU General Public License, version 3. Refer LICENSE.txt.

# frozen_string_literal: true

require_relative "data_type/version"

# DataType
# Description: A DataType class. Defines a data type set.
class DataType

  undef initialize

  # self.types()
  # Description: Reader. Gets the data types.
  # Return TYPES: The data types.
  def self.types() return TYPES end

  # self.instance?(obj = nil)
  # Description: Predicate. Verifies an object is a DataType type instance.
  # Parameter object: Any object.
  # Return boolean: True in the case the argument is a Numeric,
  # FalseClass, TrueClass, Symbol, TrueClass, or NilClass instance. False
  # otherwise.
  def self.instance?(object = nil)

    boolean = false
    TYPES.each { |type| if (object.is_a?(type)) then boolean = true end }
    return boolean

  end

  # self.type?(type = nil)
  # Description: Reader. Predicate. Verifies an identifier is a DataType.
  # Parameter type: Any identifier.
  # Return boolean: True in the case the type is Numeric, FalseClass, TrueClass,
  # Symbol, or NilClass, or, one of their ancestors. False otherwise. 
  def self.type?(type = nil)

    types_element = self.types_element?(type)
    type_child = self.type_child?(type)
    boolean = (types_element || type_child)
    return boolean

  end

  # self.types_element?(type = nil)
  # Description: Predicate. Verifies an identifier exists in the TYPES array.
  # Parameter type: Any identifier.
  # Return boolean: True in the case the argument exists in the TYPES array.
  # False otherwise.
  def self.types_element?(type = nil)
    boolean = TYPES.include?(type)
    return boolean
  end

  # self.type_child?(type = nil)
  # Description: Predicate. Verifies an identifier is a TYPES element child.
  # Parameter type: Any identifier.
  # Return boolean: True in the case the identifier is a TYPES element child.
  # False otherwise.
  def self.type_child?(type = nil)

    boolean = false
    ancestor_array = type.ancestors()
    if (type.class().equal?(Class))
      ancestor_array.each { |ancestor|
        if (TYPES.include?(ancestor)) then boolean = true end
      }
    end
    return boolean

  end

  # Private constants
  TYPES = [Numeric, FalseClass, TrueClass, Symbol, NilClass].freeze()

  private_constant :TYPES

end
