# frozen_string_literal: true

require "test_helper"

# DataTypeTest
# Description: Tests the DataType class library.
class DataTypeTest < Minitest::Test
  
  # Constants
  CLASS = DataType
  INTEGER_INST = 0
  HASH_INST = {}
  CLASS_FLOAT = Float
  CLASS_HASH = Hash
  CLASS_STRING = String
  CLASS_INTEGER = Integer
  CLASS_NUMERIC = Numeric

  # test_git_paths()
  # Description: The github workflows and gitignore files exist.
  def test_git_paths()
    assert_path_exists('.github/workflows/ruby.yml')
    assert_path_exists('.gitignore')
  end

  # test_doc_paths()
  # Description: The documentation files exist.
  def test_doc_paths()

    assert_path_exists('README.md')
    refute_path_exists('.yardoc') # Fail locally, pass remotely
    assert_path_exists('CHANGELOG.md')

  end

  # test_admin_paths()
  # Description: The administrative files exist.
  def test_admin_paths()
    assert_path_exists('LICENSE.txt')
    assert_path_exists('CODE_OF_CONDUCT.md')
  end

  # test_gem_paths()
  # Description: The gem-related files exist.
  def test_gem_paths()

    assert_path_exists('Rakefile')
    assert_path_exists('Gemfile')
    assert_path_exists('Gemfile.lock')

  end

  # test_test_paths()
  # Description: The test files exist.
  def test_test_paths()
    assert_path_exists('test/data_type_test.rb')
    assert_path_exists('test/test_helper.rb')
  end

  # test_lib_paths()
  # Description: The class files exist.
  def test_lib_paths()
    assert_path_exists('lib/data_type.rb')
    assert_path_exists('lib/data_type/version.rb')
  end

  # test_bin_paths()
  # Description: The binary files exist.
  def test_bin_paths()
    assert_path_exists('bin/console')
    assert_path_exists('bin/setup')
  end

  # test_signature_path()
  # Description: The signature files exist.
  def test_signature_paths() assert_path_exists('sig/data_type.rbs') end

  # test_that_it_has_a_version_number()
  # Description: The class has a version number.
  def test_that_it_has_a_version_number() refute_nil(CLASS::VERSION) end

  # setup()
  # Description: Sets fixtures.
  def setup() end

  # test_methods_declared()
  # Description: The class's "initialize" method was undefined. The class's
  # "types", "instance?", "type?", "types_element?", and "type_child?" methods
  # were declared.
  def test_methods_declared()

    refute_respond_to(CLASS, 'initialize')
    assert_respond_to(CLASS, 'types')
    assert_respond_to(CLASS, 'instance?')
    assert_respond_to(CLASS, 'type?')
    assert_respond_to(CLASS, 'types_element?')
    assert_respond_to(CLASS, 'type_child?')

  end

  # test_constants()
  # Description: The class's "TYPES" constant was defined.
  def test_constants()
    refute_empty(CLASS.constants())
    assert_raises(NameError) { CLASS::TYPES }
  end

  # test_types()
  # Description: The "TYPES" constant is an array containing Numeric,
  # FalseClass, TrueClass, Symbol, and NilClass constants.
  def test_types()
    expected = [Numeric, FalseClass, TrueClass, Symbol, NilClass]
    assert_equal(expected, CLASS.types())
  end

  # self.instance?(object = nil)
  
  # test_inst_b_x1()
  # Description: Integer instances are DataType types.
  def test_inst_b_x1() assert(CLASS.instance?(INTEGER_INST)) end

  # test_inst_b_x2()
  # Description: Hash instances are not DataType types.
  def test_inst_b_x2() refute(CLASS.instance?(HASH_INST)) end

  # self.type?(type = nil)

  # test_type_b_x1()
  # Description: The Float class is a DataType type.
  def test_type_b_x1() assert(CLASS.type?(CLASS_FLOAT)) end

  # test_type_b_x2()
  # Description: The Hash class is not a DataType type.
  def test_type_b_x2() refute(CLASS.type?(CLASS_HASH)) end

  # self.types_element(type = nil)
  
  # test_cte_x1()
  # Description: The Numeric constant is a "TYPES" element.
  def test_cte_x1() assert_operator(CLASS, 'types_element?', CLASS_NUMERIC) end

  # test_cte_x2()
  # Description: The Hash constant is not a "TYPES" element.
  def test_cte_x2() refute_operator(CLASS, 'types_element?', CLASS_HASH) end

  # self.type_child?(type = nil)

  # test_tc_x1()
  # Description: The Integer class is a DataType type.
  def test_tc_x1() assert(CLASS.type_child?(CLASS_INTEGER)) end

  # test_tc_x2()
  # Description: The Hash class is not a DataType type.
  def test_tc_x2() refute(CLASS.type_child?(CLASS_HASH)) end

  # teardown()
  # Description: Cleans memory.
  def teardown() end

end
